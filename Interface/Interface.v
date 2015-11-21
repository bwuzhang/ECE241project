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
	wire writeEn,LD_X,LD_Y,RBG;
	wire [16:0]BG_Coor;
	wire[9:0]coor_gap;
	wire [16:0]coor;
	wire [2:0]color_from_CP;
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
		defparam VGA.BACKGROUND_IMAGE = "BG.mif";
			
	// Put your code here. Your code should produce signals x,y,colour and writeEn
	// for the VGA controller, in addition to any other functionality your design may require.
    
    // Instanciate datapath
	dataPath DP(coor,SW[9:7],x,y,colour,CLOCK_50,KEY[0],RBG,BG_Coor,coor_gap,LD_X,LD_Y,color_from_CP);
	controlPath CP(CLOCK_50,writeEn,KEY[0],RBG,BG_Coor,coor_gap,coor,LD_X,LD_Y,color_from_CP,SW[9:7]);

    // Instanciate FSM control
endmodule

module dataPath(coordinate,color,x_out,y_out,color_out,clock,resetKey,RBG,BG_Coor,coor_gap,LD_X,LD_Y,color_from_CP);
	input resetKey,clock,LD_X,LD_Y,RBG;
	input [16:0]BG_Coor;
	input [9:0]coor_gap;
	input [16:0]coordinate;
	input[2:0]color;
	input [2:0]color_from_CP;
	output reg[8:0]x_out;
	output reg[7:0]y_out;
	output reg[2:0]color_out;
	wire [8:0]regisXout;
	wire [7:0]regisYout;
	wire [2:0]bg_reg_out;
	//BG bg_reg(BG_Coor,clock,3'b000,0,bg_reg_out);
	reg[8:0]coor_x;
	reg[7:0]coor_y;
	
	always@(*)
	if(!resetKey)begin
		coor_x=9'b0;
		coor_y=8'b0;
		x_out=9'b0;
		y_out=8'b0;
		color_out=color_from_CP;
	end
	else if(RBG)begin
		x_out=BG_Coor[16:8];
		y_out=BG_Coor[7:0];
		color_out=color_from_CP;
		//color_out=3'b000;
	end
	else begin
		x_out=regisXout+{4'b0,coor_gap[9:5]};
		begin
		if(regisYout<8'b11010010)
			y_out=regisYout+{3'b0,coor_gap[4:0]};
		end
		color_out=color_from_CP;
	end
	
	RegisterX X(coordinate[16:8],clock,resetKey,regisXout,LD_X);
	RegisterY Y(coordinate[7:0],clock,resetKey,regisYout,LD_Y);
endmodule

module controlPath(clock,plotVGA,resetKey,RBG,BGcounterOut,robotCounterOut,coor,LD_X,LD_Y,color_from_CP,color);
	input resetKey,clock;
	output reg plotVGA,RBG,LD_X,LD_Y;
	output [16:0]coor;
	output reg[2:0]color_from_CP;
	input [2:0]color;
	parameter [3:0]resetState=4'b0000,gameState=4'b0001,gameOverState=4'b0010,displayState=4'b0011,waitState=4'b0100,BGstate=4'b0101;
	reg  [3:0]currentState,nextState;
	output [16:0]BGcounterOut;
	output [9:0]robotCounterOut;
	reg cenable,RCenable,NPenable;
	wire clock60,clock1s;
	wire [2:0]bg_reg_out,rebot_reg_out;
	wire [16:0]BGtransferedAddress,robotTramsferedAddress;
	
	vga_address_translator BGtranslator(BGcounterOut[16:8],BGcounterOut[7:0],BGtransferedAddress);
	vga_address_translator RobotTranslator({4'b0000,robotCounterOut[9:5]},{3'b000,robotCounterOut[4:0]},robotTramsferedAddress);
	
	BG bg_reg(BGtransferedAddress,clock,3'b000,0,bg_reg_out);
	//Robot24x30 robot_reg(robotTramsferedAddress[9:0],clock,3'b000,0,rebot_reg_out);
	//Robot24x30 robot_reg({5'b00000,robotCounterOut[9:5]}*10'b0000011000+{5'b00000,robotCounterOut[4:0]},clock,3'b000,0,rebot_reg_out);
	Robot24x30 robot_reg({5'b00000,robotCounterOut[9:5]}+10'b0000011000*{5'b00000,robotCounterOut[4:0]},clock,3'b000,0,rebot_reg_out);
	
	BGcounter BGC(clock,BGcounterOut,resetKey,cenable);
	robotCounter RC(clock,robotCounterOut,resetKey,RCenable);
	nextPosition NP(clock,clock60,coor,resetKey,NPenable);
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
		else if (currentState==displayState)begin
				if(clock60)
					currentState=nextState;
				end
		else if(currentState==BGstate)
			currentState=nextState;
			
	always@(*)
		case(currentState)
			resetState:
				nextState=displayState;
			displayState:if(robotCounterOut==10'b1100011110)
						nextState=BGstate;
					else
						nextState=displayState;
			BGstate:if(BGcounterOut==17'b10100000000000000)
						nextState=displayState;
					else
						nextState=BGstate;
		endcase
	
	always@(*)
	case(currentState)
	resetState:begin
	plotVGA=0;
	cenable=0;
	RCenable=0;
	NPenable=0;
	RBG=0;
	LD_X=0;
	LD_Y=0;
	
	end
	displayState:begin
	plotVGA=1;
	cenable=0;
	RCenable=1;
	RBG=0;
	NPenable=1;
	LD_X=1;
	LD_Y=1;
	color_from_CP=rebot_reg_out;
	end
	BGstate:begin
	plotVGA=1;
	cenable=1;
	RBG=1;
	RCenable=0;
	NPenable=0;
	LD_X=0;
	LD_Y=0;
	color_from_CP=bg_reg_out;
	end
	endcase
	
endmodule

/*module OLDcontrolPath(k1,clock,resetKey);
	input clock,resetKey,k1;
	
	parameter [3:0]resetState=4'b0000,gameState=4'b0001,gameOverState=4'b0010,displayState=4'b0011,waitState=4'b0100,BGstate=4'b0101;
	wire clock60;
	wire [3:0]currentState,nextState;
	sixtyHzClock CLK60(clock,clock60,resetKey);
	
	always@(posedge clock)
	if(~resetKey)
		currentState=resetState;
	else if(currentState==resetState)
		currentState=nextState;
	else if(currentState==displayState)begin
			if(clock60)
				currentState=nextState;
			end
	else if(currentState==BGstate)
			currentState=nextState;
		
	always@(*)
	case(currentState)
		resetState:begin
		if(~k1)
			nextState=gameState;
		else
			nextState=resetState;
		end
		gameState:nextState=waitState;
		gameOverState:nextState=resetState;
		waitState:begin
		if(oneMinClockOut=??)
			nextState=displayState;
		else
			nextState=waitState;
		end
		displayState:begin
		if(oneMinClockOut=??)
			nextState=waitState;
		else
			nextState=displayState;
		end
	endcase
	
	always@(*)
	case(currentState)
	resetState:
	gameState:
	gameOverState:
	displayState:
	waitState:
	
	
	
endmodule
*/
module nextPosition(CLOCK_50,clock60hz,out,reset,enable);
	wire POSOUT;
	reg POSIN;
	input clock60hz,reset,enable,CLOCK_50;
	output reg[16:0]out;
	position p(CLOCK_50,POSOUT,reset,POSIN);
	wire [8:0]first9;
	assign first9=out[16:8];
	wire [7:0]last8=out[7:0];
	always@(posedge clock60hz)
	if(!reset)
		begin
		out=17'b01000000011110000;
		POSIN=1'b1;
		end
	else if(enable)
	begin
		case(POSOUT)
		1'b0:begin
				if(out[7:0]==8'b11110000)
				begin	//Going down
					out[16:8]=9'b010000000;
					POSIN=1'b1;	
				end
				else if(out[7:0]<8'b11110000&&(out[7:0]>=8'b10110100))
							begin
								out[7:0]=out[7:0]+8'b00000101;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b0;
							end
				else if ((out[7:0]<8'b10110100)&&(out[7:0]>=8'b10000100))
							begin
								out[7:0]=out[7:0]+8'b00000100;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b0;
							end
			   else if ((out[7:0]<8'b10000100)&&(out[7:0]>=8'b01100000))
							begin
								out[7:0]=out[7:0]+8'b00000011;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b0;
							end
				else if ((out[7:0]<8'b01100000)&&(out[7:0]>=8'b01001000))
							begin
								out[7:0]=out[7:0]+8'b00000010;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b0;
							end
				else if ((out[7:0]<8'b01001000)&&(out[7:0]>=8'b00111100))
							begin
								out[7:0]=out[7:0]+8'b00000001;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b0;
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
				else if(out[7:0]<8'b11110000&&(out[7:0]>=8'b10110100))
							begin
								out[7:0]=out[7:0]-8'b00000101;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b1;
							end
				else if ((out[7:0]<8'b10110100)&&(out[7:0]>=8'b10000100))
							begin
								out[7:0]=out[7:0]-8'b00000100;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b1;
							end
			   else if ((out[7:0]<8'b10000100)&&(out[7:0]>=8'b01100000))
							begin
								out[7:0]=out[7:0]-8'b00000011;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b1;
							end
				else if ((out[7:0]<8'b01100000)&&(out[7:0]>=8'b01001000))
							begin
								out[7:0]=out[7:0]-8'b00000010;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b1;
							end
				else if ((out[7:0]<8'b01001000)&&(out[7:0]>=8'b00111100))
							begin
								out[7:0]=out[7:0]-8'b00000001;
								out[16:8]=out[16:8]+9'b000000001;
								POSIN=1'b1;
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

module twoSecClock(clock,reset,out,enable);
	input clock,reset,enable;
	output reg out;
	reg [26:0]q;
	
	always @ (posedge clock)
		if((~reset)||(q==27'd0)) begin
			q<=27'b101111101011110000100000000;
			out=1;
		end
		else begin
			q<=q-27'b1;
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
module oneSecClock(clock,reset,out);
	input clock,reset;
	output reg out;
	reg [25:0]q;
	
	always @ (posedge clock)
		if((~reset)||(q==26'd0)) begin
			q<=26'b10111110101111000010000000;
			out=1;
		end
		else begin
			q<=q-26'b1;
			out=0;
		end
		
endmodule

module robotCounter(clock,out,reset,enable);
	input clock,reset,enable;
	output reg[9:0]out;
	always@(posedge clock)
	if(!reset)
		out=10'b0;
	else if(enable&&(out!=10'b1100011110))begin
			if(out[4:0]==5'b11110)
				out=out-10'b0000011110+10'b0000100000;
			else out=out+10'b0000000001;
		end
	else if(enable&&(out==10'b1100011110))
		out=10'b1100011110;
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
