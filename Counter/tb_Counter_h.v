`timescale 1ns / 1ps


module tb_Counter_h;
reg push;
reg rst;
reg pop;
//reg clk;
wire en;
wire [1:0] count;

Counter_h UUT(.push(push),.rst(rst), .pop(pop),.en(en),.count(count));
//.clk(clk),

initial begin
//clk = 0;
 push=0;
 pop=0;
rst = 1;
#10
rst = 0;
push=1;
#10
push=1;
#10
push=1;
#10
push=0;
#10
pop=1;
#10
pop=1;  

#50;
end
//always
//#10 clk=~clk;


endmodule
