`timescale 1ns / 1ps

module tb_Eight_Bit_Full_Adder();

reg [7:0] x;
reg [7:0] y;

wire [7:0] out;
wire c7;

Eight_Bit_Full_Adder uut (
.x(x),
.y(y),
.s(out),
.c7(c7)
);
 
initial
begin
 
x = 8'b0000_1101;
y = 8'b0000_0000;
#50; 
y = 8'b0000_0010;
#50
y = 8'b0000_1101; 
#50
x = 8'b0000_1101; 
#50;
end

endmodule