`timescale 1ns / 1ps

module fifo_k(

input reset,
input clk,
input push,
input pop,
input [7:0] data_in,

output en,
output wire fifo_full,
output wire fifo_empty,
output reg [7:0] data_out
);
    
reg [7:0] reg0,reg1,reg2,reg3;
wire [2:0] count;
 
always@(posedge clk or posedge reset)
begin
if (reset)
    reg0<= 0;
else if(push)
    reg0 <= data_in;
end 
 
always@(posedge clk or posedge reset)
begin
if (reset)
    reg1<= 0;
else if(push)
    reg1 <= reg0;
end 

always@(posedge clk or posedge reset)
begin
if (reset)
    reg2<= 0;
else if(push)
    reg2 <= reg1;
end 

always@(posedge clk or posedge reset)
begin
if (reset)
    reg3<= 0;
else if(push)
    reg3 <= reg2;
end 
    
Counter_k UUT(.push(push),
.rst(reset),
.clk(clk),
.pop(pop),
.en(en),
.count(count)
);
    
assign    fifo_full= (count[2])&(~count[1])&(~count[0]);
assign    fifo_empty= (~count[2])&(~count[1])&(~count[0]);
    
always@(*) begin
	   case(count)
		  3'b000: data_out = reg0;
		  3'b001: data_out = reg1;
		  3'b010: data_out = reg2;
		  3'b011: data_out = reg3;
	   endcase
end
     
endmodule
