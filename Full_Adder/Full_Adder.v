`timescale 1ns / 1ps

module Full_Adder(x, y, z, s, c);

input x, y, z;
output s, c;
wire s1, c1, c2;

assign s1 = x^y;
assign c1 = x&y;
assign c2 = s1&z;
assign s = s1^z;
assign c = c1|c2;
//*/

/*
assign s = x^y^z;
assign c = (x&y) & (s&z);
*/

endmodule
