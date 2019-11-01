`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/04 12:10:05
// Design Name: 
// Module Name: tb_fifo
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_fifo;
reg [7:0]data_in;
reg push;
reg pop;
reg reset;
reg clk;
wire en;
wire [7:0]data_out;
wire fifo_full;
wire fifo_empty;

fifo UUT(
.data_in(data_in),
.push(push),
.pop(pop),
.reset(reset),
.clk(clk),
.en(en),
.data_out(data_out),
.fifo_full(fifo_full),
.fifo_empty(fifo_empty)
);
initial begin
clk = 0;
push=0;
pop=0;
data_in=0;
reset = 1;
@(posedge clk)
reset = 0;
@(posedge clk)
push = 1; 
data_in=5;
@(posedge clk);
data_in=9;
@(posedge clk) 
push = 0; 
@(posedge clk)
push=0; pop=1;
data_in=7;
@(posedge clk)
data_in=10;
@(posedge clk)
push=0; pop=1;
@(posedge clk)
@(posedge clk)
@(posedge clk)
    $stop;
end

always
#10 clk=~clk;






endmodule
