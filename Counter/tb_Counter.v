`timescale 1ns / 1ps

module tb_Counter;

reg push;
reg pop;
reg reset;
wire [2:0] cnt;
 
Counter uut (
.push(push),
.pop(pop),
.reset(reset),
.cnt(cnt)
);
 
initial
begin
push = 0;
pop = 0;
reset=1;
#10;
reset=0;
#10; push = 1'b1; pop = 1'b0;
#10; push = 1'b0; pop = 1'b1;
#10; push = 1'b0; pop = 1'b1;
#10; push = 1'b1; pop = 1'b0;
#10; push = 1'b1; pop = 1'b0;
#10; push = 1'b1; pop = 1'b0;
#10; push = 1'b0; pop = 1'b1;
#10; push = 1'b0; pop = 1'b1;
#10;
end

endmodule
