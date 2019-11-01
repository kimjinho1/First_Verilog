`timescale 1ns / 1ps

module Eight_Bit_Full_Adder(x, y, s, c7);

input [7:0] x, y;
output [7:0] s;
output c7;
wire [6:0] c; 

Half_Adder ha1(.x(x[0]),.y(y[0]),.s(s[0]),.c(c[0]));

Full_Adder fa1(.x(x[1]),.y(y[1]),.z(c[0]),.s(s[1]),.c(c[1]));
Full_Adder fa2(.x(x[2]),.y(y[2]),.z(c[1]),.s(s[2]),.c(c[2]));
Full_Adder fa3(.x(x[3]),.y(y[3]),.z(c[2]),.s(s[3]),.c(c[3]));
Full_Adder fa4(.x(x[4]),.y(y[4]),.z(c[3]),.s(s[4]),.c(c[4]));
Full_Adder fa5(.x(x[5]),.y(y[5]),.z(c[4]),.s(s[5]),.c(c[5]));
Full_Adder fa6(.x(x[6]),.y(y[6]),.z(c[5]),.s(s[6]),.c(c[6]));
Full_Adder fa7(.x(x[7]),.y(y[7]),.z(c[6]),.s(s[7]),.c(c7));

endmodule