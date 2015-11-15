module Interface 
(
		CLOCK_50,						//	On Board 50 MHz
		// Your inputs and outputs here
        KEY,
        SW/*,
		// The ports below are for the VGA output.  Do not change.
		VGA_CLK,   						//	VGA Clock
		VGA_HS,							//	VGA H_SYNC
		VGA_VS,							//	VGA V_SYNC
		VGA_BLANK,						//	VGA BLANK
		VGA_SYNC,						//	VGA SYNC
		VGA_R,   						//	VGA Red[9:0]
		VGA_G,	 						//	VGA Green[9:0]
		VGA_B  */ 						//	VGA Blue[9:0]
	);

	input			CLOCK_50;				//	50 MHz
	input   [9:0]   SW;
	input   [3:0]   KEY;

	// Declare your inputs and outputs here
	// Do not change the following outputs
	/*output			VGA_CLK;   				//	VGA Clock
	output			VGA_HS;					//	VGA H_SYNC
	output			VGA_VS;					//	VGA V_SYNC
	output			VGA_BLANK;				//	VGA BLANK
	output			VGA_SYNC;				//	VGA SYNC
	output	[9:0]	VGA_R;   				//	VGA Red[9:0]
	output	[9:0]	VGA_G;	 				//	VGA Green[9:0]
	output	[9:0]	VGA_B;  */ 				//	VGA Blue[9:0]
	
	wire resetn;
	assign resetn = KEY[0];
	
	// Create the colour, x, y and writeEn wires that are inputs to the controller.

	wire [2:0] colour;
	wire [7:0] x;
	wire [6:0] y;
	wire writeEn;

	// Create an Instance of a VGA controller - there can be only one!
	// Define the number of colours as well as the initial background
	// image file (.MIF) for the controller.
	/*vga_adapter VGA(
			.resetn(resetn),
			.clock(CLOCK_50),
			.colour(colour),
			.x(x),
			.y(y),
			.plot(writeEn),*/
			/* Signals for the DAC to drive the monitor. */
			/*.VGA_R(VGA_R),
			.VGA_G(VGA_G),
			.VGA_B(VGA_B),
			.VGA_HS(VGA_HS),
			.VGA_VS(VGA_VS),
			.VGA_BLANK(VGA_BLANK),
			.VGA_SYNC(VGA_SYNC),
			.VGA_CLK(VGA_CLK));
		defparam VGA.RESOLUTION = "320x240";
		defparam VGA.MONOCHROME = "FALSE";
		defparam VGA.BITS_PER_COLOUR_CHANNEL = 2;
		defparam VGA.BACKGROUND_IMAGE = "black.mif";*/
			
	// Put your code here. Your code should produce signals x,y,colour and writeEn
	// for the VGA controller, in addition to any other functionality your design may require.
    
    // Instanciate datapath
	
    // Instanciate FSM control
endmodule

module controlPath(clock,plotVGA,resetKey,RB,BGcounterOut,robotCounterOut,coor,LD_X,LD_Y);
	input resetKey,clock;
	output reg plotVGA,RB,LD_X,LD_Y;
	output [16:0]coor;
	parameter [3:0]resetState=4'b0000,gameState=4'b0001,gameOverState=4'b0010,displayState=4'b0011,waitState=4'b0100,BGstate=4'b0101;
	reg  [3:0]currentState,nextState;
	output [16:0]BGcounterOut;
	output [9:0]robotCounterOut;
	reg cenable,RCenable,NPenable;
	wire clock60,clock1s;
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
			displayState:if(robotCounterOut==10'b1001011000)
						nextState=BGstate;
					else
						nextState=displayState;
			BGstate:if(BGcounterOut==17'b10010110000000000)
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
	RB=0;
	LD_X=0;
	LD_Y=0;
	
	end
	displayState:begin
	plotVGA=1;
	cenable=0;
	RCenable=1;
	RB=0;
	NPenable=1;
	LD_X=1;
	LD_Y=1;
	end
	BGstate:begin
	plotVGA=1;
	cenable=1;
	RB=1;
	RCenable=0;
	NPenable=0;
	LD_X=0;
	LD_Y=0;
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
module dataPath();

endmodule


module nextPosition(clock50,clock,out,reset,enable);
	wire POSOUT;
	reg POSIN;
	input clock,reset,enable,clock50;
	output reg[16:0]out;
	position p(clock50,POSOUT,reset,POSIN);
	always@(posedge clock)
	if(!reset)begin
		out=17'b00010000000000000;
		POSIN=1'b0;
		end
	else if(enable)begin
	case(POSOUT)
	1'b0:if(out[7:0]==8'b10110100)begin
				POSIN=1'b1;
			end
			else begin
				out[7:0]=out[7:0]+8'b00000011;
				POSIN=1'b0;
			end

	1'b1:if(out[7:0]==8'b00000000)begin
				POSIN=1'b0;
			end
			else begin
				out[7:0]=out[7:0]-8'b00000011;
				POSIN=1'b1;
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
		out=1'b1;
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
	else if(enable&&(out!=10'b1001011000))
		out=out+10'b0000000001;
	else if(enable&&(out==10'b1001011000))
		out=10'b1001011000;
	else
		out=10'b0;

endmodule 

module BGcounter(clock,out,reset,enable);
	input clock,reset,enable;
	output reg[16:0]out;
	
	always@(posedge clock)
	if(!reset)
		out=17'b0;
	else if(enable&&(out!=17'b10010110000000000))begin
			if(out[7:0]==8'b11110000)
				out=out-17'b00000000011110000+17'b00000000100000000;
			else
				out=out+17'b00000000000000001;
			end
	else if(enable&&(out==17'b10010110000000000))
				out=17'b10010110000000000;
	else
		out=17'b0;
	
endmodule 