`timescale 1ns / 1ps

module tb_Half_Adder;

reg input1 = 0;
reg input2 = 0;

wire out;
wire carry;

Half_Adder uut (
.x(input1),
.y(input2),
.s(out),
.c(carry)
);

initial
begin
input1 = 0;
input2 = 0;
#50; input1 = 1;
#50; input1 = 0; input2 = 1; 
#50; input1 = 1; 
#50;
end

endmodule
