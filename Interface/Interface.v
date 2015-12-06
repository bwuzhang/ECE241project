`include "vga_adapter/vga_adapter.v"
`include "vga_adapter/vga_address_translator.v"
`include "vga_adapter/vga_controller.v"
`include "vga_adapter/vga_pll.v"
//`include "BG.v"
module Interface 
(
		CLOCK_50,						//	On Board 50 MHz
		// Your inputs and outputs here
        KEY,
        SW,
		  PS2_CLK,
			PS2_DAT,
			LEDR,
			HEX0,
			HEX1,
		// The ports below are for the VGA output.  Do not change.
		VGA_CLK,   						//	VGA Clock
		VGA_HS,							//	VGA H_SYNC
		VGA_VS,							//	VGA V_SYNC
		VGA_BLANK,						//	VGA BLANK
		VGA_SYNC,						//	VGA SYNC
		VGA_R,   						//	VGA Red[9:0]
		VGA_G,	 						//	VGA Green[9:0]
		VGA_B  					//	VGA Blue[9:0]
	);

	input			CLOCK_50;				//	50 MHz
	input   [9:0]   SW;
	input   [3:0]   KEY;
	output [9:0]LEDR;

	inout PS2_CLK;
	inout PS2_DAT;
	output [6:0]HEX0,HEX1;
	// Declare your inputs and outputs here
	// Do not change the following outputs
	output			VGA_CLK;   				//	VGA Clock
	output			VGA_HS;					//	VGA H_SYNC
	output			VGA_VS;					//	VGA V_SYNC
	output			VGA_BLANK;				//	VGA BLANK
	output			VGA_SYNC;				//	VGA SYNC
	output	[9:0]	VGA_R;   				//	VGA Red[9:0]
	output	[9:0]	VGA_G;	 				//	VGA Green[9:0]
	output	[9:0]	VGA_B;  				//	VGA Blue[9:0]
	
	wire resetn;
	assign resetn = KEY[0];
	
	// Create the colour, x, y and writeEn wires that are inputs to the controller.

	wire [2:0] colour;
	wire [8:0] x;
	wire [7:0] y;
	wire writeEn,LD_X,LD_Y,Dbackground,displayOnVGA,Dobject,Dlightsaber,LD_X_LS,LD_Y_LS,Dbutton,Dgameover;
	wire [16:0]BG_Coor,bufferCounterOut;
	wire[9:0]coor_gap,coor_gap_LS;
	wire [16:0]coor,coor_LS;
	wire [2:0]color_from_CP;
	wire [11:0]buttonCounterOut;
	// Create an Instance of a VGA controller - there can be only one!
	// Define the number of colours as well as the initial background
	// image file (.MIF) for the controller.
	vga_adapter VGA(
			.resetn(KEY[0]),
			.clock(CLOCK_50),
			.colour(colour),
			.x(x),
			.y(y),
			.plot(writeEn),
			/* Signals for the DAC to drive the monitor. */
			.VGA_R(VGA_R),
			.VGA_G(VGA_G),
			.VGA_B(VGA_B),
			.VGA_HS(VGA_HS),
			.VGA_VS(VGA_VS),
			.VGA_BLANK(VGA_BLANK),
			.VGA_SYNC(VGA_SYNC),
			.VGA_CLK(VGA_CLK));
		defparam VGA.RESOLUTION = "320x240";
		defparam VGA.MONOCHROME = "FALSE";
		defparam VGA.BITS_PER_COLOUR_CHANNEL = 1;
		defparam VGA.BACKGROUND_IMAGE = "BG_New.mif";
			
	// Put your code here. Your code should produce signals x,y,colour and writeEn
	// for the VGA controller, in addition to any other functionality your design may require.
    
    // Instanciate datapath
	dataPath DP(coor,SW[9:7],x,y,colour,CLOCK_50,KEY[0],Dbackground,BG_Coor,coor_gap,LD_X,LD_Y,color_from_CP,
					displayOnVGA,Dobject,bufferCounterOut,Dlightsaber,coor_LS,LD_X_LS,LD_Y_LS,coor_gap_LS,Dbutton,buttonCounterOut,Dgameover);
					
	controlPath CP(CLOCK_50,writeEn,KEY[0],Dbackground,Dobject,BG_Coor,coor_gap,coor,LD_X,LD_Y,
						color_from_CP,SW[9:7],displayOnVGA,bufferCounterOut,Dlightsaber,coor_LS,LD_X_LS,LD_Y_LS,
						coor_gap_LS,SW[3:0],PS2_DAT,PS2_CLK,LEDR[9:0],HEX0,HEX1,Dbutton,buttonCounterOut,KEY[1],Dgameover);

    // Instanciate FSM control
endmodule

module dataPath(coordinate,color,x_out,y_out,color_out,clock,resetKey,Dbackground,BG_Coor,coor_gap,LD_X,LD_Y,
					color_from_CP,displayOnVGA,Dobject,bufferCounterOut,Dlightsaber,coor_LS,LD_X_LS,
					LD_Y_LS,coor_gap_LS,Dbutton,buttonCounterOut,Dgameover);
					
	input resetKey,clock,LD_X,LD_Y,Dbackground,displayOnVGA,Dobject,Dlightsaber,LD_X_LS,LD_Y_LS,Dbutton,Dgameover;
	input [16:0]BG_Coor,bufferCounterOut;
	input [9:0]coor_gap,coor_gap_LS;
	input [11:0]buttonCounterOut;
	input [16:0]coordinate,coor_LS;
	input[2:0]color;
	input [2:0]color_from_CP;
	output reg[8:0]x_out;
	output reg[7:0]y_out;
	output reg[2:0]color_out;
	wire [8:0]regisXout,regisXout_LS;
	wire [7:0]regisYout,regisYout_LS;
	wire [2:0]bg_reg_out;
	//BG bg_reg(BG_Coor,clock,3'b000,0,bg_reg_out);
	reg[8:0]coor_x;
	reg[7:0]coor_y;
	
	wire [2:0]bgBufferColor;
	wire writeBGbuffer;
	wire [2:0]BgbutterOut;
		
	BGbuffer bgb({8'b0,x_out}+{9'b0,y_out}*17'b00000000101000000,clock,color_out,~displayOnVGA,BgbutterOut);
				
	always@(*)
	if(!resetKey)begin
		coor_x=9'b0;
		coor_y=8'b0;
		x_out=9'b0;
		y_out=8'b0;
		color_out=color_from_CP;
	end
	else if(Dbackground||Dgameover)begin
		x_out=BG_Coor[16:8];
		y_out=BG_Coor[7:0];
		color_out=color_from_CP;
		//color_out=3'b000;
	end
	else if(Dobject)  begin
		x_out=regisXout+{4'b0,coor_gap[9:5]};
		begin
		if(regisYout<8'b11010010)
			y_out=regisYout+{3'b0,coor_gap[4:0]};
		end
		color_out=color_from_CP;
	end
	else if(Dlightsaber)  begin
		x_out=regisXout_LS+{4'b0,coor_gap_LS[9:5]};
		begin
		if(regisYout_LS<8'b11010010)
			y_out=regisYout_LS+{3'b0,coor_gap_LS[4:0]};
		end
		color_out=color_from_CP;
	end
	else if(displayOnVGA) begin
					x_out=bufferCounterOut[16:8];
					y_out=bufferCounterOut[7:0];
					color_out=BgbutterOut;
				end
	else if(Dbutton)begin
			x_out=9'b010000010+{3'b0,buttonCounterOut[11:6]};
			y_out=8'b10110100+{2'b0,buttonCounterOut[5:0]};
			color_out=color_from_CP;
			end
	RegisterX X(coordinate[16:8],clock,resetKey,regisXout,LD_X);
	RegisterY Y(coordinate[7:0],clock,resetKey,regisYout,LD_Y);
	
	RegisterX X_LS(coor_LS[16:8],clock,resetKey,regisXout_LS,LD_X_LS);
	RegisterY Y_LS(coor_LS[7:0],clock,resetKey,regisYout_LS,LD_Y_LS);
	
endmodule

module controlPath(clock,plotVGA,resetKey,Dbackground,Dobject,BGcounterOut,objCounterOut,coor,
						LD_X,LD_Y,color_from_CP,color,displayOnVGA,bufferCounterOut,Dlightsaber,coor_LS,
						LD_X_LS,LD_Y_LS,lsCountOut,SW,PS2_DAT,PS2_CLK,led,HEX0,HEX1,Dbutton,buttonCounterOut,
						startKey,Dgameover);
	input resetKey,clock,startKey;
	input [3:0]SW;
	input [2:0]color;	
	
	output reg plotVGA,Dbackground,LD_X,LD_Y,displayOnVGA,Dobject,Dlightsaber,LD_X_LS,LD_Y_LS,Dbutton,Dgameover;
	output reg[16:0]coor;
	output reg [16:0]coor_LS;
	output reg[2:0]color_from_CP;
	output [16:0]BGcounterOut,bufferCounterOut;
	output [9:0]objCounterOut,lsCountOut;
	output [9:0]led;
	output [6:0]HEX0,HEX1;
	output [11:0]buttonCounterOut;
		

	inout PS2_DAT;
	inout PS2_CLK;	
	
	parameter [3:0]resetState=4'b0000,drawGameOver=4'b0001,gameOverState=4'b0010,writeObj2Buffer=4'b0011,
						waitState=4'b0100,writeBG2Buffer=4'b0101,writeLS2buffer=4'b0110,displayState=4'b0111,
						drawBG_AfterReset=4'b1000,drawButton_AfterReset=4'b1001,display_AfterReset=4'b1010;
	reg  [3:0]currentState,nextState;

	reg cenable,RCenable,NPenable,NPenable1,NPenable2,NPenable3,bufferEnable,LSCenable,colorIsNotObj,BCenable,mimichalfHzclock;
	wire clock60,clock1s;
	wire [2:0]bg_reg_out,rebot_reg_out,ls_reg_out,bg_reg_out_AfterSlash,jet_reg_out,lord_reg_out,button_reg_out,
			soilder_reg_out,hunter_reg_out,robot_reg_out,yoda_reg_out,go_reg_out;
	wire [16:0]BGtransferedAddress,robotTramsferedAddress;
	wire mimic60HzClock4Robot,mimic60HzClock4LS;
	wire click,colorIsNotObj1,colorIsNotObj2,colorIsNotObj3,collision,mimichalfHzclock1,mimichalfHzclock2,mimichalfHzclock3;
	wire [16:0]coor_LLSS;
	wire [7:0]randomNumber1,randomNumber2,randomNumber3;
	wire [16:0]coor1,coor2,coor3;
	reg [8:0] score; 

	assign led[0]=colorIsNotObj;
	assign led[1]=click;
	assign led[3:2]=randomNumber1%3;
	assign led[4]=led[4]+mimichalfHzclock;
	assign led[5]=(randomNumber3%6==2);
	assign led[9:6]=currentState;
	always@(posedge colorIsNotObj)
		score=score+8'b00000001;
		
	hex hex1(score[7:4],HEX1);
	hex hex0(score[3:0],HEX0);
	
	vga_address_translator BGtranslator(BGcounterOut[16:8],BGcounterOut[7:0],BGtransferedAddress);

	//BG bg_reg(BGtransferedAddress,clock,3'b000,0,bg_reg_out);
	BG_New bg_reg({8'b0,BGcounterOut[16:8]}+17'b00000000101000000*{9'b0,BGcounterOut[7:0]},clock,3'b000,1'b0,bg_reg_out);
	BG_New bg_reg_AfterSlash(({8'b0,coor[16:8]}+{12'b00000,objCounterOut[9:5]})+17'b00000000101000000*({9'b0,coor[7:0]}+{17'b00000,objCounterOut[4:0]})
									,clock,3'b000,1'b0,bg_reg_out_AfterSlash);
	GO go({8'b0,BGcounterOut[16:8]}+17'b00000000101000000*{9'b0,BGcounterOut[7:0]},clock,3'b000,1'b0,go_reg_out);
	
	
	//Robot24x30 robot_reg({5'b00000,objCounterOut[9:5]}+10'b0000011000*{5'b00000,objCounterOut[4:0]},clock,3'b000,1'b0,rebot_reg_out);
	
	jet jet_reg ({5'b00000,objCounterOut[9:5]}+10'b0000011110*{5'b00000,objCounterOut[4:0]},clock,3'b000,1'b0,jet_reg_out);
	lord lord_reg ({5'b00000,objCounterOut[9:5]}+10'b0000011110*{5'b00000,objCounterOut[4:0]},clock,3'b000,1'b0,lord_reg_out);
	yoda yoda_reg ({5'b00000,objCounterOut[9:5]}+10'b0000011110*{5'b00000,objCounterOut[4:0]},clock,3'b000,1'b0,yoda_reg_out);
	soilder soilder_reg ({5'b00000,objCounterOut[9:5]}+10'b0000011110*{5'b00000,objCounterOut[4:0]},clock,3'b000,1'b0,soilder_reg_out);
	hunter hunter_reg ({5'b00000,objCounterOut[9:5]}+10'b0000011110*{5'b00000,objCounterOut[4:0]},clock,3'b000,1'b0,hunter_reg_out);
	robot robot_reg ({5'b00000,objCounterOut[9:5]}+10'b0000011110*{5'b00000,objCounterOut[4:0]},clock,3'b000,1'b0,robot_reg_out);
	
	//lightSaber ls_reg({5'b00000,lsCountOut[9:5]}+10'b0000011110*{5'b00000,lsCountOut[4:0]},clock,3'b000,1'b0,ls_reg_out);
	ls ls_reg({5'b00000,lsCountOut[9:5]}+10'b0000000010*{5'b00000,lsCountOut[4:0]},clock,3'b000,1'b0,ls_reg_out);
	
	
	button bt_reg({6'b00000,buttonCounterOut[11:6]}+12'b000000111000*{6'b00000,buttonCounterOut[5:0]},clock,3'b000,1'b0,button_reg_out);
	
	BGcounter BGC(clock,BGcounterOut,resetKey,cenable);
	objCounter RC(clock,objCounterOut,resetKey,RCenable,mimic60HzClock4Robot);
	BGcounter BufferCounter(clock,bufferCounterOut,resetKey,bufferEnable);
	lightSaberCounter LScounter(clock,lsCountOut,resetKey,LSCenable,mimic60HzClock4LS);
	ButtonCounter bcounter(clock,resetKey,BCenable,buttonCounterOut);
	
	always@(clock)
	if(randomNumber1%3==0)
	begin
		NPenable1=NPenable;
		NPenable2=0;
		NPenable3=0;
		coor=coor1;
		colorIsNotObj=colorIsNotObj1;
		mimichalfHzclock=mimichalfHzclock1;
	end
	else if(randomNumber1%3==1)
	begin
		NPenable2=NPenable;
		NPenable1=0;
		NPenable3=0;
		coor=coor2;
		colorIsNotObj=colorIsNotObj2;
		mimichalfHzclock=mimichalfHzclock2;
	end
	else if(randomNumber1%3==2)
	begin
		NPenable3=NPenable;
		NPenable2=0;
		NPenable1=0;
		coor=coor3;
		colorIsNotObj=colorIsNotObj3;
		mimichalfHzclock=mimichalfHzclock3;
	end
	
	NextPosition1 NP1(clock,mimic60HzClock4Robot,coor1,resetKey,NPenable1,colorIsNotObj1,collision,randomNumber2,mimichalfHzclock1);
	NextPosition2 NP2(clock,mimic60HzClock4Robot,coor2,resetKey,NPenable2,colorIsNotObj2,collision,randomNumber2,mimichalfHzclock2);
	NextPosition3 NP3(clock,mimic60HzClock4Robot,coor3,resetKey,NPenable3,colorIsNotObj3,collision,randomNumber2,mimichalfHzclock3);
	
	//LSmove ls_move(clock,mimic60HzClock4LS,resetKey,SW,coor_LS);
	Mouse MouseCoor(clock, resetKey, PS2_CLK, PS2_DAT, coor_LLSS[16:8], coor_LLSS[7:0], click);
	always@(posedge mimic60HzClock4LS)
		coor_LS=coor_LLSS;
	
	collisionDetector collisionD(clock,coor+17'b00000111100001111,coor_LS+17'b00000000100001111,5'b01111,5'b1111,
											click,collision,resetKey);
	
	randomNumberGenerator rng1(clock,mimichalfHzclock,resetKey,randomNumber1,8'b10101010);//trajectory
	randomNumberGenerator rng2(clock,mimichalfHzclock,resetKey,randomNumber2,8'b00111001);//x coordinates
	randomNumberGenerator rng3(clock, mimichalfHzclock,resetKey,randomNumber3,8'b11101001);//character
	
	//nextPosition NP(clock,clock60,coor,resetKey,NPenable);
	sixtyHzClock CLK60(clock,clock60,resetKey);
	//oneSecClock CLK1S(clock,resetKey,clock1s);
	//always@(posedge clock)
	//	if(~resetKey)
	//		currentState=reset;
	always@(clock)
		if(~resetKey)
			currentState=resetState;
		else	if (currentState==resetState)
				currentState=nextState;
		else	if (currentState==drawBG_AfterReset)
				currentState=nextState;
		else	if (currentState==drawButton_AfterReset)
				currentState=nextState;
		else	if (currentState==display_AfterReset)
				begin 
				if(~startKey)
					currentState=nextState;
				end
		else if (currentState==writeObj2Buffer)
					//if(colorIsNotObj&&(randomNumber3%6==2))
					//	currentState=drawGameOver;
					//else
						currentState=nextState;
		else if(currentState==writeLS2buffer)
					currentState=nextState;
		else if(currentState==displayState)
			begin
				if(clock60)begin
					currentState=nextState;
					end
			end
		else if(currentState==writeBG2Buffer)
							if(colorIsNotObj&&(randomNumber3%6==2))
					currentState=drawGameOver;
					else
			currentState=nextState;
		else if(currentState==drawGameOver)
			currentState=nextState;
		else if(currentState==gameOverState)
			currentState=nextState;
			
	always@(*)
		case(currentState)
			resetState:
				nextState=drawBG_AfterReset;
			drawBG_AfterReset:if(BGcounterOut==17'b10100000011110000)
						nextState=drawButton_AfterReset;
					else
						nextState=drawBG_AfterReset;
			drawButton_AfterReset:if(buttonCounterOut==12'b111000111000)
							nextState=display_AfterReset;
						else
							nextState=drawButton_AfterReset;
			display_AfterReset:if(bufferCounterOut==17'b10100000011110000)
						nextState=writeBG2Buffer;
					else
						nextState=display_AfterReset;
			writeLS2buffer:if(lsCountOut==10'b0001011110)
						nextState=displayState;
					else
						nextState=writeLS2buffer;
			writeObj2Buffer:if(objCounterOut==10'b1111011110)
						nextState=writeLS2buffer;
					else
						nextState=writeObj2Buffer;
			writeBG2Buffer:if(BGcounterOut==17'b10100000011110000)
						nextState=writeObj2Buffer;
					else
						nextState=writeBG2Buffer;
			displayState:if(bufferCounterOut==17'b10100000011110000)
						nextState=writeBG2Buffer;
					else
						nextState=displayState;
			drawGameOver:if(BGcounterOut==17'b10100000011110000)
						nextState=gameOverState;
					else
						nextState=drawGameOver;
			gameOverState:
						nextState=gameOverState;
		endcase
	
	always@(*)
	case(currentState)
	resetState:begin
	plotVGA=0;
	cenable=0;
	RCenable=0;
	NPenable=0;
	Dbackground=0;
	LD_X=0;
	LD_Y=0;
	bufferEnable=0;
	displayOnVGA=0;
	Dobject=0;
	LSCenable=0;
	LD_X_LS=0;
	LD_Y_LS=0;
	Dlightsaber=0;
	Dbutton=0;
	BCenable=0;
	Dgameover=0;
	end
	drawBG_AfterReset:begin
	plotVGA=0;
	cenable=1;
	Dbackground=1;
	RCenable=0;
	NPenable=0;
	LD_X=0;
	LD_Y=0;
	color_from_CP=bg_reg_out;
	bufferEnable=0;
	displayOnVGA=0;
	Dobject=0;
	LSCenable=0;
	LD_X_LS=0;
	LD_Y_LS=0;
	Dlightsaber=0;
	Dbutton=0;
	BCenable=0;
	Dgameover=0;
	end
	drawButton_AfterReset:begin
	plotVGA=0;
	cenable=0;
	RCenable=0;
	Dbackground=0;
	NPenable=0;
	LD_X=0;
	LD_Y=0;
	color_from_CP=button_reg_out;
	bufferEnable=0;
	displayOnVGA=0;
	Dobject=0;
	LSCenable=0;
	LD_X_LS=0;
	LD_Y_LS=0;
	Dlightsaber=0;
	Dbutton=1;
	BCenable=1;
	Dgameover=0;
	end
	display_AfterReset:begin
	plotVGA=1;
	cenable=0;
	Dbackground=0;
	RCenable=0;
	NPenable=0;
	LD_X=0;
	LD_Y=0;
	color_from_CP=bg_reg_out; //this line doesn't matter
	bufferEnable=1;
	displayOnVGA=1;
	Dobject=0;
	LSCenable=0;
	LD_X_LS=0;
	LD_Y_LS=0;
	Dlightsaber=0;
	Dbutton=0;
	BCenable=0;
	Dgameover=0;
	end
	writeObj2Buffer:begin
	plotVGA=0;
	cenable=0;
	RCenable=1;
	Dbackground=0;
	NPenable=1;
	LD_X=1;
	LD_Y=1;
	begin
	if(colorIsNotObj)
		color_from_CP=bg_reg_out_AfterSlash;
	else if(randomNumber3%6==0)
		color_from_CP=jet_reg_out;
	else if(randomNumber3%6==1)
		color_from_CP=lord_reg_out;
	else if(randomNumber3%6==2)
		color_from_CP=yoda_reg_out;
	else if(randomNumber3%6==3)
		color_from_CP=robot_reg_out;
	else if(randomNumber3%6==4)
		color_from_CP=hunter_reg_out;
	else if(randomNumber3%6==5)
		color_from_CP=soilder_reg_out;
	
	end
	bufferEnable=0;
	displayOnVGA=0;
	Dobject=1;
	LSCenable=0;
	LD_X_LS=0;
	LD_Y_LS=0;
	Dlightsaber=0;
	Dbutton=0;
	BCenable=0;
	Dgameover=0;
	end
	writeLS2buffer:begin
	plotVGA=0;
	cenable=0;
	RCenable=0;
	Dbackground=0;
	NPenable=0;
	LD_X=0;
	LD_Y=0;
	color_from_CP=ls_reg_out;
	bufferEnable=0;
	displayOnVGA=0;
	Dobject=0;
	LSCenable=1;
	LD_X_LS=1;
	LD_Y_LS=1;
	Dlightsaber=1;
	Dbutton=0;
	BCenable=0;
	Dgameover=0;
	end
	writeBG2Buffer:begin
	plotVGA=0;
	cenable=1;
	Dbackground=1;
	RCenable=0;
	NPenable=0;
	LD_X=0;
	LD_Y=0;
	color_from_CP=bg_reg_out;
	bufferEnable=0;
	displayOnVGA=0;
	Dobject=0;
	LSCenable=0;
	LD_X_LS=0;
	LD_Y_LS=0;
	Dlightsaber=0;
	Dbutton=0;
	BCenable=0;
	Dgameover=0;
	end
	displayState:begin
	plotVGA=1;
	cenable=0;
	Dbackground=0;
	RCenable=0;
	NPenable=0;
	LD_X=0;
	LD_Y=0;
	color_from_CP=bg_reg_out; //this line doesn't matter
	bufferEnable=1;
	displayOnVGA=1;
	Dobject=0;
	LSCenable=0;
	LD_X_LS=0;
	LD_Y_LS=0;
	Dlightsaber=0;
	Dbutton=0;
	BCenable=0;
	Dgameover=0;
	end
	drawGameOver:begin
	plotVGA=0;
	cenable=1;
	Dbackground=0;
	RCenable=0;
	NPenable=0;
	LD_X=0;
	LD_Y=0;
	color_from_CP=go_reg_out;
	bufferEnable=0;
	displayOnVGA=0;
	Dobject=0;
	LSCenable=0;
	LD_X_LS=0;
	LD_Y_LS=0;
	Dlightsaber=0;
	Dbutton=0;
	BCenable=0;
	Dgameover=1;
	end
	gameOverState:begin
	plotVGA=1;
	cenable=0;
	Dbackground=0;
	RCenable=0;
	NPenable=0;
	LD_X=0;
	LD_Y=0;
	color_from_CP=bg_reg_out; //this line doesn't matter
	bufferEnable=1;
	displayOnVGA=1;
	Dobject=0;
	LSCenable=0;
	LD_X_LS=0;
	LD_Y_LS=0;
	Dlightsaber=0;
	Dbutton=0;
	BCenable=0;
	Dgameover=0;	
	end
	endcase
	
endmodule

module collisionDetector(clock,object_center_coor,ls_center_coor,radius_object_X,radius_object_Y,pressed,out,resetKey);
	input clock,pressed,resetKey;
	input [16:0]object_center_coor,ls_center_coor;
	input [4:0]radius_object_X,radius_object_Y;
	output reg out;
	
	always @(posedge clock)
		if(~resetKey)
		begin
			out=1'b0;
		end
		
		else if(pressed)
		begin
			if((ls_center_coor[16:8]<object_center_coor[16:8]+{4'b0,radius_object_X})&&
				(ls_center_coor[16:8]>object_center_coor[16:8]-{4'b0,radius_object_X})&&
				(ls_center_coor[7:0]<object_center_coor[7:0]+{3'b0,radius_object_Y})&&
				(ls_center_coor[7:0]>object_center_coor[7:0]-{3'b0,radius_object_Y}))
				begin
				out=1'b1;
				end
			
			else begin
				out=1'b0;
				end
		end
		else
			out=1'b0;
endmodule


module NextPosition1(CLOCK_50,clock60hz,out,reset,enable,colorIsNotObj,click,randomNumber2,mimichalfHzclock);
	wire POSOUT;
	reg POSIN;
	input clock60hz,reset,enable,CLOCK_50,click;
	input [7:0]randomNumber2;
	output reg[16:0]out;
	output reg colorIsNotObj,mimichalfHzclock;
	reg already_cut;
	wire [8:0]randowX;
	assign randowX={1'b0,randomNumber2/2};
	position p(CLOCK_50,POSOUT,reset,POSIN);
	

	always@(posedge CLOCK_50)begin
		if(already_cut)
			colorIsNotObj=1;
		else
			colorIsNotObj=0;
			
	end
	
	always@(posedge CLOCK_50) begin
	if(~reset)
		begin
		out={randowX,8'b11110000};
		POSIN=1'b1;
		already_cut=0;
		mimichalfHzclock=0;
		end
	else if(enable&&clock60hz)
	begin
		case(POSOUT)
		1'b0:begin
				if(out[7:0]==8'b11110000)
				begin	//Going down
					out[16:8]=randowX;
					POSIN=1'b1;	
					already_cut=0;
					mimichalfHzclock=1;
				end
				else if(out[7:0]<8'b11110000&&(out[7:0]>=8'b10110100))
							begin
								out[7:0]=out[7:0]+8'b00000101;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b0;
								already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
				else if ((out[7:0]<8'b10110100)&&(out[7:0]>=8'b10000100))
							begin
								out[7:0]=out[7:0]+8'b00000100;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b0;
								already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
			   else if ((out[7:0]<8'b10000100)&&(out[7:0]>=8'b01100000))
							begin
								out[7:0]=out[7:0]+8'b00000011;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b0;
								already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
				else if ((out[7:0]<8'b01100000)&&(out[7:0]>=8'b01001000))
							begin
								out[7:0]=out[7:0]+8'b00000010;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b0;
								already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
				else if ((out[7:0]<8'b01001000)&&(out[7:0]>=8'b00111100))
							begin
								out[7:0]=out[7:0]+8'b00000001;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b0;
								already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
				else	
				begin
					out[7:0]=out[7:0]+8'b00000011;
					out[16:8]=out[16:8]+9'b000000001;
					POSIN=1'b0;
				end
			end

		1'b1:begin
				if(out[7:0]<=8'b00111100)//Going up
				begin    
					POSIN=1'b0;
				end
				else if(out[7:0]<=8'b11110000&&(out[7:0]>=8'b10110100))
							begin
								out[7:0]=out[7:0]-8'b00000101;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b1;
								already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
				else if ((out[7:0]<8'b10110100)&&(out[7:0]>=8'b10000100))
							begin
								out[7:0]=out[7:0]-8'b00000100;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b1;
								already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
			   else if ((out[7:0]<8'b10000100)&&(out[7:0]>=8'b01100000))
							begin
								out[7:0]=out[7:0]-8'b00000011;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b1;
								already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
				else if ((out[7:0]<8'b01100000)&&(out[7:0]>=8'b01001000))
							begin
								out[7:0]=out[7:0]-8'b00000010;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b1;
								already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
				else if ((out[7:0]<8'b01001000)&&(out[7:0]>=8'b00111100))
							begin
								out[7:0]=out[7:0]-8'b00000001;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b1;
								already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
				
				//end
				else 	
					begin
						out[7:0]=out[7:0]-8'b00000011;
						out[16:8]=out[16:8]+9'b000000001;
						POSIN=1'b1;
					end
					
				end
			endcase
		end
	end

endmodule 
module NextPosition2(CLOCK_50,clock60hz,out,reset,enable,colorIsNotObj,click,randomNumber2,mimichalfHzclock);//43211234
	wire POSOUT;
	reg POSIN;
	input clock60hz,reset,enable,CLOCK_50,click;
	output reg[16:0]out;
	output reg colorIsNotObj,mimichalfHzclock;
	input [7:0]randomNumber2;
	reg already_cut;
	position p(CLOCK_50,POSOUT,reset,POSIN);
	assign randowX={1'b0,randomNumber2/2};
	always@(posedge CLOCK_50)begin
		if(already_cut)
			colorIsNotObj=1;
		else
			colorIsNotObj=0;
			
	end
	
	always@(posedge CLOCK_50) begin
	if(~reset)
		begin
		//out=17'b01000000010010110;
		out={randowX,8'b11110000};
		POSIN=1'b1;
		already_cut=0;
		mimichalfHzclock=0;
		end
	else if(enable&&clock60hz)
	begin
		case(POSOUT)
		1'b0:begin
				if(out[7:0]>=8'b11110000)begin
					out[16:8]=randowX;
					POSIN=1'b1;	
					already_cut=0;
					mimichalfHzclock=1;
				end
				else if ((out[7:0]<8'b11110000)&&(out[7:0]>=8'b10110100))
							begin
								out[7:0]=out[7:0]+8'b00000100;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b0;
								already_cut=already_cut|click;
								mimichalfHzclock=0;								
							end
			   else if ((out[7:0]<8'b10110100)&&(out[7:0]>=8'b10000111))
							begin
								out[7:0]=out[7:0]+8'b00000011;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b0;
								already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
				else if ((out[7:0]<8'b10000111)&&(out[7:0]>=8'b01101001))
							begin
								out[7:0]=out[7:0]+8'b00000010;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b0;
							already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
				else if ((out[7:0]<8'b01101001)&&(out[7:0]>=8'b01011010))
							begin
								out[7:0]=out[7:0]+8'b00000001;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b0;
							already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
				else	
				begin
					out[7:0]=out[7:0]+8'b00000011;
					out[16:8]=out[16:8]+9'b000000001;
					POSIN=1'b0;
				already_cut=already_cut|click;
								mimichalfHzclock=0;
				end
			end

		1'b1:begin
				if(out[7:0]<=8'b01011010)//Going up
				begin    
					POSIN=1'b0;
		
				end
				else if ((out[7:0]<8'b11110000)&&(out[7:0]>=8'b10110100))
							begin
								out[7:0]=out[7:0]-8'b00000100;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b1;
						already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
			   else if ((out[7:0]<8'b10110100)&&(out[7:0]>=8'b10000111))
							begin
								out[7:0]=out[7:0]-8'b00000011;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b1;
			already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
				else if ((out[7:0]<8'b10000111)&&(out[7:0]>=8'b01101001))
							begin
								out[7:0]=out[7:0]-8'b00000010;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b1;
				already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
				else if ((out[7:0]<8'b01101001)&&(out[7:0]>=8'b01011010))
							begin
								out[7:0]=out[7:0]-8'b00000001;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b1;
			already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
				
				//end
				else 	
					begin
						out[7:0]=out[7:0]-8'b00000011;
						out[16:8]=out[16:8]+9'b000000001;
						POSIN=1'b1;
						already_cut=already_cut|click;
								mimichalfHzclock=0;
					end
					
				end
			endcase
		end
	end

endmodule 

module NextPosition3(CLOCK_50,clock60hz,out,reset,enable,colorIsNotObj,click,randomNumber2,mimichalfHzclock);//654321123456
	wire POSOUT;
	reg POSIN;
	input clock60hz,reset,enable,CLOCK_50,click;
	output reg[16:0]out;
	output reg colorIsNotObj,mimichalfHzclock;
	input [7:0]randomNumber2;
	reg already_cut;
	assign randowX={1'b0,randomNumber2/2};
	position p(CLOCK_50,POSOUT,reset,POSIN);
	
	always@(posedge CLOCK_50)begin
		if(already_cut)
			colorIsNotObj=1;
		else
			colorIsNotObj=0;
			
	end
	
	always@(posedge CLOCK_50) begin
	if(~reset)
		begin
		//out=17'b01000000010010110;
		out={randowX,8'b11110000};
		POSIN=1'b1;
		already_cut=0;
		mimichalfHzclock=0;
		end
	else if(enable&&clock60hz)
	begin
		case(POSOUT)
		1'b0:begin
				if(out[7:0]>=8'b11101111)
				begin
					out[16:8]=randowX;
					POSIN=1'b1;	
					already_cut=1'b0;
					mimichalfHzclock=1;
				end
				else if(out[7:0]<8'b11110000&&(out[7:0]>=8'b10110100))
							begin
								out[7:0]=out[7:0]+8'b00000110;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b0;
								already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
				else if(out[7:0]<8'b10110100&&(out[7:0]>=8'b10000010))
							begin
								out[7:0]=out[7:0]+8'b00000101;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b0;
								already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
				else if ((out[7:0]<8'b10000010)&&(out[7:0]>=8'b01011010))
							begin
								out[7:0]=out[7:0]+8'b00000100;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b0;
								already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
			   else if ((out[7:0]<8'b01011010)&&(out[7:0]>=8'b00111100))
							begin
								out[7:0]=out[7:0]+8'b00000011;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b0;
								already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
				else if ((out[7:0]<8'b00111100)&&(out[7:0]>=8'b00101000))
							begin
								out[7:0]=out[7:0]+8'b00000010;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b0;
								already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
				else if ((out[7:0]<8'b00101000)&&(out[7:0]>=8'b00011110))
							begin
								out[7:0]=out[7:0]+8'b00000001;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b0;
								already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
				else	
				begin
					out[7:0]=out[7:0]+8'b00000011;
					out[16:8]=out[16:8]+9'b000000001;
					POSIN=1'b0;
					already_cut=already_cut|click;
								mimichalfHzclock=0;
				end
			end

		1'b1:begin
				if(out[7:0]<=8'b00011110)//Going up
				begin    
					POSIN=1'b0;
				end
				else if(out[7:0]<8'b11110000&&(out[7:0]>=8'b10110100))
							begin
								out[7:0]=out[7:0]-8'b00000110;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b1;
								already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
				else if(out[7:0]<=8'b10110100&&(out[7:0]>=8'b10000010))
							begin
								out[7:0]=out[7:0]-8'b00000101;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b1;
								already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
				else if ((out[7:0]<8'b10000010)&&(out[7:0]>=8'b01011010))
							begin
								out[7:0]=out[7:0]-8'b00000100;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b1;
								already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
			   else if ((out[7:0]<8'b01011010)&&(out[7:0]>=8'b00111100))
							begin
								out[7:0]=out[7:0]-8'b00000011;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b1;
								already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
				else if ((out[7:0]<8'b00111100)&&(out[7:0]>=8'b00101000))
							begin
								out[7:0]=out[7:0]-8'b00000010;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b1;
								already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
				else if ((out[7:0]<8'b00101000)&&(out[7:0]>=8'b00011110))
							begin
								out[7:0]=out[7:0]-8'b00000001;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b1;
								already_cut=already_cut|click;
								mimichalfHzclock=0;
							end
				
				//end
				else 	
					begin
						out[7:0]=out[7:0]-8'b00000011;
						out[16:8]=out[16:8]+9'b000000001;
						POSIN=1'b1;
						already_cut=already_cut|click;
								mimichalfHzclock=0;
					end
					
				end
			endcase
		end
	end

endmodule 

module position(clock,out,reset,in);
		input clock,reset;
		input in;
	output reg out;
	always@(posedge clock)
	if(!reset)
		out=1'b0;
	else begin
		case(in)
		1'b0:out=1'b0;
		1'b1:out=1'b1;
		endcase
	end

endmodule

module oneMinClock(clock,reset,out,enable);
	input clock,reset,enable;
	output reg out;
	reg [31:0]q;
	
	always @ (posedge clock)
		if((~reset)||(q==32'd0)) begin
			q<=32'b10110010110100000101111000000000;
			out=1;
		end
		else begin
			q<=q-32'b1;
			out=0;
		end
		
endmodule


module scoreCounter(clock,reset,out,enable);
	input clock,reset,enable;
	output reg [7:0]out;
	always @ (posedge clock)
		if((~reset)) 
			out=8'b0;
		else if(enable)
			out=out+8'b00000001;
endmodule
/***********************************************************************/
/*SIMULATION PUEPOSE CLOCK. NEED TO BE CHANGED TO 60HZ AT THE END     */
/**********************************************************************/
module sixtyHzClock(clock,out,reset);
	input clock,reset;
	output reg out;
	reg [19:0]q;
	
	always @ (posedge clock)
		if((~reset)||(q==20'd0)) begin
			q<=20'b11001011011100110101;
			out=1;
		end
		else begin
			q<=q-20'b1;
			out=0;
		end
		
endmodule
/***********************************************************************/
/*SIMULATION PUEPOSE CLOCK. NEED TO BE CHANGED TO 60HZ AT THE END     */
/**********************************************************************/


module objCounter(clock,out,reset,enable,mimic60HzClock);
	input clock,reset,enable;
	output reg mimic60HzClock;
	output reg[9:0]out;
	always@(posedge clock)
	if(!reset)begin
		out=10'b0;
		mimic60HzClock=0;
		end
	else if(enable&&(out!=10'b1111011110))begin
			if(out[4:0]==5'b11110)
				out=out-10'b0000011110+10'b0000100000;
			else begin out=out+10'b0000000001;
			if(out==10'b0000000001)
				mimic60HzClock=1;
			else
				mimic60HzClock=0;
			end
		end
	else if(enable&&(out==10'b1111011110))
		out=10'b1111011110;
	else
		out=10'b0;

endmodule 


module lightSaberCounter(clock,out,reset,enable,mimic60HzClock4LS);
	input clock,reset,enable;
	output reg[9:0]out;
	output reg mimic60HzClock4LS;
	always@(posedge clock)
	if(!reset)begin
		out=10'b0;
	   mimic60HzClock4LS=0;
		end
	else if(enable&&(out!=10'b0001011110))begin
			if(out[4:0]==5'b11110)
				out=out-10'b0000011110+10'b0000100000;
			else begin out=out+10'b0000000001;
			if(out==10'b0000000001)
				mimic60HzClock4LS=1;
			else
				mimic60HzClock4LS=0;
			end
		end
	else if(enable&&(out==10'b0001011110))
		out=10'b0001011110;
	else
		out=10'b0;

endmodule 

module BGcounter(clock,out,reset,enable);
	input clock,reset,enable;
	output reg[16:0]out;
	
	always@(posedge clock)
	if(!reset)
		out=17'b0;
	else if(enable&&(out!=17'b10100000011110000))begin
			if(out[7:0]==8'b11110000)
				out=out-17'b00000000011110000+17'b00000000100000000;
			else out=out+17'b00000000000000001;
		end
	else if(enable&&(out==17'b10100000011110000))
		 out=17'b10100000011110000;
	else
		out=17'b0;
	
endmodule 

module RegisterX(coordinate,clock,resetKey,out,load);
input [8:0]coordinate;
input resetKey,clock,load;
output reg[8:0]out;

always @(*)
if(!resetKey)
	out=9'b0;
else if(load)
	out=coordinate;

endmodule

module RegisterY(coordinate,clock,resetKey,out,load);
input [7:0]coordinate;
input resetKey,clock,load;
output reg[7:0]out;

always @(*)
if(!resetKey)
	out=8'b0;
else if(load)
	out=coordinate;

endmodule



module randomNumberGenerator(CLOCK, reset, out,seed);
input  CLOCK, reset,clk;
input [7:0]seed;
output reg [7:0] out;
wire clk;
always@(posedge CLOCK)
if(!reset)
out<=seed;
else if(clk)
begin
out[7]<=out[6];
out[6]<=out[5];
out[5]<=out[4];
out[4]<=out[3];
out[3]<=out[2];
out[2]<=out[1];
out[1]<=out[0];
out[0]<=out[3]^out[4]^out[5]^out[7];
end
endmodule

module randomNumberGenerator2(CLOCK,clk, reset, out,seed);
input  CLOCK, reset,clk;
input [7:0]seed;
output reg [7:0] out;
wire clk;
always@(posedge CLOCK)
if(!reset)
out<=seed;
else if(clk)
begin
out[7]<=out[6];
out[6]<=out[5];
out[5]<=out[4];
out[4]<=out[3];
out[3]<=out[2];
out[2]<=out[1];
out[1]<=out[0];
out[0]<=out[3]^out[4]^out[5]^out[7];
end
endmodule

module Galois8bitRandomGenerator(seed, load, CLOCK, reset, out);
input load, CLOCK, reset;
input [7:0] seed;
output reg [7:0] out;
wire clk;
ClockDivider1Hz CLK(CLOCK,reset,clk);
always@(posedge CLOCK)
if(!reset)
out<=8'b00000000;
else if(!load)
out<=seed;
else if(clk)
begin
out[0]<=out[1];
out[1]<=out[2]^out[0];
out[2]<=out[3]^out[0];
out[3]<=out[4]^out[0];
out[4]<=out[5];
out[5]<=out[6];
out[6]<=out[7];
out[7]<=out[0];
end
endmodule

module Fibonacci8bitRandomGenerator(seed, load, CLOCK, reset, out);
input load, CLOCK, reset;
input [7:0] seed;
output reg [7:0] out;
wire clk;
ClockDivider1Hz CLK(CLOCK,reset,clk);
always@(posedge CLOCK)
if(!reset)
out<=8'b00000000;
else if(!load)
out<=seed;
else if(clk)
begin 
out[7]<=out[6];
out[6]<=out[5];
out[5]<=out[4];
out[4]<=out[3];
out[3]<=out[2];
out[2]<=out[1];
out[1]<=out[0];
out[0]<=out[3]^out[4]^out[5]^out[7];
end
endmodule
module ClockDivider1Hz(CLOCK,reset,CLKout);
	input CLOCK;
	input  reset;
	output reg CLKout;
	reg [26:0] x;
	parameter init=27'd100000000;//0.5 hz right now
	always@(posedge CLOCK)
		if(~reset)
		begin
			x<=init;
			CLKout=0;
		end
		else if(x==0)
		begin
			CLKout=1;
			x<=init;
		end
		else
		begin
			CLKout=0;
			x<=x-1'b1;
		end
endmodule

module hex(SW,HEX0);

		input [3:0] SW;
		output [6:0] HEX0;
		wire [3:0] c;
		
		assign c=SW;
		
		assign HEX0[0]=~((~c[0]|c[1]|c[2]|c[3])&
		(c[0]|c[1]|~c[2]|c[3])&(~c[0]|~c[1]|c[2]|~c[3])&
		(~c[0]|c[1]|~c[2]|~c[3]));
		
		assign HEX0[1]=~((~c[0]|c[1]|~c[2]|c[3])&
		(c[0]|~c[1]|~c[2]|c[3])&(~c[0]|~c[1]|c[2]|~c[3])&
		(c[0]|c[1]|~c[2]|~c[3])&(c[0]|~c[1]|~c[2]|~c[3])&
		(~c[0]|~c[1]|~c[2]|~c[3]));
		
		assign HEX0[2]=~((c[0]|~c[1]|c[2]|c[3])&
		(c[0]|c[1]|~c[2]|~c[3])&(c[0]|~c[1]|~c[2]|~c[3])&
		(~c[0]|~c[1]|~c[2]|~c[3]));
		
		assign HEX0[3]=~((~c[0]|c[1]|c[2]|c[3])&
		(c[0]|c[1]|~c[2]|c[3])&(~c[0]|~c[1]|~c[2]|c[3])&
		(c[0]|~c[1]|c[2]|~c[3])&(~c[0]|~c[1]|~c[2]|~c[3]));
		
		assign HEX0[4]=~((~c[0]|c[1]|c[2]|c[3])&
		(~c[0]|~c[1]|c[2]|c[3])&(c[0]|c[1]|~c[2]|c[3])&
		(~c[0]|c[1]|~c[2]|c[3])&(~c[0]|~c[1]|~c[2]|c[3])&
		(~c[0]|c[1]|c[2]|~c[3]));
		
		assign HEX0[5]=~((~c[0]|c[1]|c[2]|c[3])&
		(c[0]|~c[1]|c[2]|c[3])&(~c[0]|~c[1]|c[2]|c[3])&
		(~c[0]|~c[1]|~c[2]|c[3])&(~c[0]|c[1]|~c[2]|~c[3]));
		
		assign HEX0[6]=~((c[0]|c[1]|c[2]|c[3])&
		(~c[0]|c[1]|c[2]|c[3])&(~c[0]|~c[1]|~c[2]|c[3])&
		(c[0]|c[1]|~c[2]|~c[3]));
		
endmodule

module ButtonCounter(clock,reset,enable,out);
	input clock,reset,enable;
	output reg[11:0]out;
	always@(posedge clock)
	if(!reset||!enable)
		out=12'b0;
	else if(enable&&(out!=12'b111000111000))
		begin
		if(out[5:0]==6'b111000)
			out=out-12'b000000111000 + 12'b000001000000;
		else 
			out=out+12'b000000000001;
		end
	else if(enable&&(out==12'b111000111000))
		out=12'b111000111000;

endmodule 
