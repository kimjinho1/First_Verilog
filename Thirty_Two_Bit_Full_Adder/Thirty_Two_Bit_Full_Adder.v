`timescale 1ns / 1ps

module Thirty_Two_Bit_Full_Adder(x, y, s, c31);

input [31:0] x, y;
output [31:0] s;
output c31;
wire [30:0] c; 

Half_Adder ha1(.x(x[0]),.y(y[0]),.s(s[0]),.c(c[0]));

Full_Adder fa1(.x(x[1]),.y(y[1]),.z(c[0]),.s(s[1]),.c(c[1]));
Full_Adder fa2(.x(x[2]),.y(y[2]),.z(c[1]),.s(s[2]),.c(c[2]));
Full_Adder fa3(.x(x[3]),.y(y[3]),.z(c[2]),.s(s[3]),.c(c[3]));
Full_Adder fa4(.x(x[4]),.y(y[4]),.z(c[3]),.s(s[4]),.c(c[4]));
Full_Adder fa5(.x(x[5]),.y(y[5]),.z(c[4]),.s(s[5]),.c(c[5]));
Full_Adder fa6(.x(x[6]),.y(y[6]),.z(c[5]),.s(s[6]),.c(c[6]));
Full_Adder fa7(.x(x[7]),.y(y[7]),.z(c[6]),.s(s[7]),.c(c[7]));
Full_Adder fa8(.x(x[8]),.y(y[8]),.z(c[7]),.s(s[8]),.c(c[8]));
Full_Adder fa9(.x(x[9]),.y(y[9]),.z(c[8]),.s(s[9]),.c(c[9]));
Full_Adder fa10(.x(x[10]),.y(y[10]),.z(c[9]),.s(s[10]),.c(c[10]));
Full_Adder fa11(.x(x[11]),.y(y[11]),.z(c[10]),.s(s[11]),.c(c[11]));
Full_Adder fa12(.x(x[12]),.y(y[12]),.z(c[11]),.s(s[12]),.c(c[12]));
Full_Adder fa13(.x(x[13]),.y(y[13]),.z(c[12]),.s(s[13]),.c(c[13]));
Full_Adder fa14(.x(x[14]),.y(y[14]),.z(c[13]),.s(s[14]),.c(c[14]));
Full_Adder fa15(.x(x[15]),.y(y[15]),.z(c[14]),.s(s[15]),.c(c[15]));
Full_Adder fa16(.x(x[16]),.y(y[16]),.z(c[15]),.s(s[16]),.c(c[16]));
Full_Adder fa17(.x(x[17]),.y(y[17]),.z(c[16]),.s(s[17]),.c(c[17]));
Full_Adder fa18(.x(x[18]),.y(y[18]),.z(c[17]),.s(s[18]),.c(c[18]));
Full_Adder fa19(.x(x[19]),.y(y[19]),.z(c[18]),.s(s[19]),.c(c[19]));
Full_Adder fa20(.x(x[20]),.y(y[20]),.z(c[19]),.s(s[20]),.c(c[20]));
Full_Adder fa21(.x(x[21]),.y(y[21]),.z(c[20]),.s(s[21]),.c(c[21]));
Full_Adder fa22(.x(x[22]),.y(y[22]),.z(c[21]),.s(s[22]),.c(c[22]));
Full_Adder fa23(.x(x[23]),.y(y[23]),.z(c[22]),.s(s[23]),.c(c[23]));
Full_Adder fa24(.x(x[24]),.y(y[24]),.z(c[23]),.s(s[24]),.c(c[24]));
Full_Adder fa25(.x(x[25]),.y(y[25]),.z(c[24]),.s(s[25]),.c(c[25]));
Full_Adder fa26(.x(x[26]),.y(y[26]),.z(c[25]),.s(s[26]),.c(c[26]));
Full_Adder fa27(.x(x[27]),.y(y[27]),.z(c[26]),.s(s[27]),.c(c[27]));
Full_Adder fa28(.x(x[28]),.y(y[28]),.z(c[27]),.s(s[28]),.c(c[28]));
Full_Adder fa29(.x(x[29]),.y(y[29]),.z(c[28]),.s(s[29]),.c(c[29]));
Full_Adder fa30(.x(x[30]),.y(y[30]),.z(c[29]),.s(s[30]),.c(c[30]));
Full_Adder fa31(.x(x[31]),.y(y[31]),.z(c[30]),.s(s[31]),.c(c31));

endmodule