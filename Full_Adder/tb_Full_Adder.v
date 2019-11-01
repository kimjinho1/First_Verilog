`timescale 1ns / 1ps

module tb_Full_Adder;

reg input1;
reg input2;
reg carryin;
 
wire out;
wire carryout;
 
Full_Adder uut (
.x(input1),
.y(input2),
.z(carryin),
.s(out),
.c(carryout)
);
 
initial
begin
input1 = 0;
input2 = 0;
carryin = 0;
#50; input1 = 1;
#50; input2 = 1;
#50; input1 = 0;
#50; carryin = 1;
#50; input2 = 0;
#50; input1 = 1; 
#50; input2 = 1;
#50;
end
  
endmodule
