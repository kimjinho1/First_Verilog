module Counter_k(

input rst,
input clk,
input push,
input pop,

output en,
output reg [2:0] count
);

//wire en;
reg [2:0] in;

assign en = push | pop;
//assign count = count_reg;

always@(*) begin
	case(push)
		1'b0: in = count-1;
		1'b1: in = count+1;
	endcase
end

always@(posedge clk or posedge rst)
begin
	if(rst)
		count<=0;
	else if(en)
		count<=in;
end

endmodule