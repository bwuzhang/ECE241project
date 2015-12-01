module DebouncingCircuit(input clock,reset,signal,output reg out);
parameter N = 17;
parameter [2:0] zero=3'b000
		,high1=3'b001
		,high2=3'b010
		,high3=3'b011
		,one=3'b100
		,low1=3'b101
		,low2=3'b110
		,low3=3'b111;
					
wire tick;
reg [N-1:0] count;
reg [2:0] curr_state, next_state;

always@(posedge clock)
begin
if(!reset)
	count <= 0;
else
	count <= count + 1'b1;
end

assign tick = & count;
	
always@(posedge clock)
begin
if(!reset)
	curr_state <= zero;
else
	curr_state <= next_state;
end

always@(*)
begin
	next_state <= curr_state;
	out <= 0;
	case(curr_state)
		zero:
			if(signal)
				next_state <= high1;
			else 
				next_state <= zero;
		high1: 
			if(!signal)
				next_state <= zero;
			else if(tick)
				next_state <= high2;
		high2:
			if(!signal)
				next_state <= zero;
			else if(tick)
				next_state <= high3;
		high3:
			if(!signal)
				next_state <= zero;
			else if(tick)
				next_state <= one;
		one:
			begin
			out <= 1;
			if(!signal)
				next_state <= low1;
			end
		low1:
			if(signal)
				next_state <= one;
			else if(tick)
				next_state <= low2;
		low2:
			if(signal)
				next_state <= one;
			else if(tick) 
				next_state <= low3;
		low3:
			if(signal)
				next_state <= one;
			else if(tick)
				next_state <= zero;
		default: next_state <= zero;
	endcase
end
endmodule

