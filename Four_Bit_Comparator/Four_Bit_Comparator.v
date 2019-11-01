`timescale 1ns / 1ps

module Four_Bit_Comparator(A, B, A_big, Same, A_small);

input [3:0] A, B;
output A_big, Same, A_small;

wire X0, X1, X2, X3;

assign X0 = ~(A[0]^B[0]);
assign X1 = ~(A[1]^B[1]);
assign X2 = ~(A[2]^B[2]);
assign X3 = ~(A[3]^B[3]);

assign A_big = (A[3] & (~B[3])) | (X3 & A[2] & (~B[2])) | (X2 & A[1] & (~B[1])) | (X1 & A[0] & (~B[0])); 
assign Same = X3 & X2 & X1 & X0;
assign A_small = ((~A[3]) & B[3]) | (X3 & (~A[2]) & B[2]) | (X2 & (~A[1]) & B[1]) | (X1 & (~A[0]) & B[0]); 

endmodule
