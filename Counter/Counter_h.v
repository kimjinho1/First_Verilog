module Counter_h(
input push,
input rst,
//input clk,
input pop,
output en,
output reg [1:0] count
);

//wire en;
reg [1:0] in;

assign en = push | pop;
//assign count = count_reg;

always@(*) begin
	case(push)
		1'b0: in = count-1;
		1'b1: in = count+1;
	endcase
end

always@*
 begin
	if(rst)
		count<=0;
	else if(en)
		count<=in;
	else
	count <= count;
end

endmodule