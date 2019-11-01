`timescale 1ns / 1ps

module tb_fifo_reg;
reg reset;
reg clk;
reg push;
reg pop;
reg [7:0] data_in;

wire en;
wire fifo_full;
wire fifo_empty;
wire [7:0] data_out;
wire [7:0] reg0;
wire [7:0] reg1;
wire [7:0] reg2;
wire [7:0] reg3;

fifo_reg UUT(
.reset(reset),
.clk(clk),
.push(push),
.pop(pop),
.data_in(data_in),
.en(en),
.fifo_full(fifo_full),
.fifo_empty(fifo_empty),
.data_out(data_out),
.reg0(reg0),
.reg1(reg1),
.reg2(reg2),
.reg3(reg3)
);

initial begin
reset = 1;
clk = 0;
push=0;
pop=0;
data_in=0;
@(posedge clk)
reset = 0;
@(posedge clk)
@(posedge clk);
push=1;
data_in=5;
@(posedge clk);
data_in=9;
@(posedge clk);
pop=0;
@(posedge clk);
push=0; pop=1;
data_in=7;
@(posedge clk);
push=1; pop=0;
data_in=45;
@(posedge clk);
push=0; pop=1;
data_in=100;
@(posedge clk)
pop=0;
@(posedge clk)
pop=1;
@(posedge clk)
pop=0;
repeat(20)@(posedge clk);
    $stop;
end

always
#10 clk=~clk;

endmodule
