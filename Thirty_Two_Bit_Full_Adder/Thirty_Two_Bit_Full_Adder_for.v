`timescale 1ns / 1ps

module Thirty_Two_Bit_Full_Adder_for(x,y,s);

input [31:0] x, y;
output [31:0] s;
wire [32:0] c; 

assign c[0] = 32'b0000_0000_0000_0000_0000_0000_0000_0000;

genvar i;
for (i = 0; i < 32; i = i + 1)
begin 	
	assign c[i+1] = (x[i] & y[i]) | ((x[i] ^ y[i]) & c[i]);
	assign s[i] = x[i] ^ y[i] ^ c[i];
end

endmodule

			
