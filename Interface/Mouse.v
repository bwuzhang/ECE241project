module Mouse(CLOCK_50,reset,PS2_CLK,PS2_DAT, Xcoords, Ycoords, LeftButton);

/*****************************************************************************
 *                             Port Declarations                             *
 *****************************************************************************/
 
input CLOCK_50, reset;

inout PS2_CLK;
inout PS2_DAT;

output [8:0] Xcoords;
output [8:0] Ycoords;
output LeftButton;

/*****************************************************************************
 *                 Internal wires and registers Declarations                 *
 *****************************************************************************/

wire [23:0] data;
wire Xsign, Ysign, x, y;
wire data_en;
reg [7:0] command;
reg [23:0] data_received;
reg [8:0] Xcoords;
reg [8:0] Ycoords;

/*****************************************************************************
 *                           Parameter Declarations                          *
 *****************************************************************************/

parameter command_Enable = 8'hF4;
parameter send = 1'b1;
parameter Xinit=9'd160;
parameter Yinit=9'd120;
parameter Max = 9'b100000000;

/*****************************************************************************
 *                              Internal Modules                             *
 *****************************************************************************/

PS2_Controller Mouse(
	.CLOCK_50(CLOCK_50),
	.reset(~reset),
	.the_command(command_Enable),
	.send_command(send),
	.PS2_CLK(PS2_CLK),
	.PS2_DAT(PS2_DAT),
	.received_data(data),
	.received_data_en(data_en));
	
DebouncingCircuit D1(CLOCK_50,reset,data_received[0],LeftButton);
DebouncingCircuit D2(CLOCK_50,reset,data_received[4],Xsign);
DebouncingCircuit D3(CLOCK_50,reset,data_received[5],Ysign);
DebouncingCircuit D4(CLOCK_50,reset,Xsign|data_received[15:8],x);
DebouncingCircuit D5(CLOCK_50,reset,Ysign|data_received[23:16],y);

always@(posedge CLOCK_50)
begin
	if(!reset)
		data_received[23:0] <= 0;
	else if(data_en)
		data_received <= data;
end

always@(posedge CLOCK_50, negedge reset)
begin
	if(!reset)
		Xcoords <= Xinit;
	else if(data_en && (Xcoords+1'b1) <= 290 && Xsign == 1'b0)
		Xcoords <= Xcoords + 9'd2*x;
	else if (data_en && (Xcoords-1'b1) >= 0 && Xsign == 1'b1)
		Xcoords <= Xcoords - 1'b1;
	else if(Xcoords >= 270 && Xcoords <= 320)
		Xcoords <= 9'd270;
	else if(Xcoords <= 511 && Xcoords >= 480)
		Xcoords <= 9'd0;
end

always@(posedge CLOCK_50, negedge reset)
begin
	if(!reset)
		Ycoords <= Yinit;
	else if(data_en && (Ycoords-1'b1) >= 0 && Ysign ==1'b0)
		Ycoords <= Ycoords - 9'd2*y ;
	else if(data_en && (Ycoords+1'b1) <= 210 && Ysign ==1'b1)
		Ycoords <= Ycoords + 1'b1;
	else if(Ycoords >= 190 && Ycoords <=300)
		Ycoords <= 9'd190;
	else if(Ycoords <= 511 && Ycoords >=450)
		Ycoords <= 9'd0;	
end


/*****************************************************************************
 *                            Combinational logic                            *
 *****************************************************************************/

endmodule
