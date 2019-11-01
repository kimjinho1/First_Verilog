`timescale 1ns / 1ps

module tb_Counter_k;
reg rst;
reg clk;
reg push;
reg pop;

wire [1:0] count;

Counter_k uut0(.rst(rst),.clk(clk),.push(push),.pop(pop),.count(count));
initial begin
rst = 1;
clk = 0;
push=0;
pop=0;
@(posedge clk)
rst = 0;
push=1;
@(posedge clk)
push=1;
@(posedge clk)
push=1;
@(posedge clk)
push=0;
@(posedge clk)
pop=1;
@(posedge clk)
pop=1;  
repeat(20)@(posedge clk);
$stop;
end
always
#10 clk=~clk;

endmodule
