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
		VGA_B   						//	VGA Blue[9:0]
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
	output	[9:0]	VGA_B;   				//	VGA Blue[9:0]
	
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
	vga_adapter VGA(
			.resetn(resetn),
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
		defparam VGA.BACKGROUND_IMAGE = "black.mif";
			
	// Put your code here. Your code should produce signals x,y,colour and writeEn
	// for the VGA controller, in addition to any other functionality your design may require.
    
    // Instanciate datapath
	
    // Instanciate FSM control
endmodule


module controlPath(clock,reset);
	input clock,reset;
	
	parameter [3:0]resetState=4'b0000,gameState=4'b0001,gameOverState=4'b0010;
	
	wire [3:0]currentState,nextState;
	
	
	always@(posedge clock)
	if(~reset)
		currentState=resetState;
	else
		currentState=nextState;
		
	always@(*)
	case(currentState)
		resetState:nextState=gameState;
		gameState:nextState=gameOverState;
		gameOverState:nextState=resetState;
	endcase
	
	always@(*)
	case(currentState)
	resetState:
	
endmodule

module dataPath();

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
		if((~reset)) begin
			out=8'b0;
		end
		else if(enable)
			out=out+8'b00000001;
		end
endmodule
