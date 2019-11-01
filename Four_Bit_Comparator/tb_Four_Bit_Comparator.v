`timescale 1ns / 1ps

module tb_Four_Bit_Comparator;

reg [3:0] A, B;
wire A_big, Same, A_small;

Four_Bit_Comparator uut(
.A(A),
.B(B),
.A_big(A_big),
.Same(Same),
.A_small(A_small)
);

initial
begin
A = 4'b0000; B = 4'b0000;
#50; 
A = 4'b0111; B = 4'b0011;
#50;
B = 4'b1011;
#50;
A = 4'b1011;
#50;
end


endmodule
