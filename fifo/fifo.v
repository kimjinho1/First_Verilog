`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/04 11:44:54
// Design Name: 
// Module Name: fifo
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

module fifo(

input [7:0] data_in,
input push,
input pop,
input reset,
input clk,
output en,
output reg [7:0] data_out,
output wire fifo_full,
output wire fifo_empty
    );
    
 reg [7:0] reg0,reg1,reg2,reg3;
 wire [1:0] count;
 always@(posedge clk or posedge reset)
 begin
        if (reset)
          begin
            reg0<= 0;
           end
                else if(push)
                    begin
                        reg0 <= data_in;
                    end
                          else 
                            begin
                                reg0=reg0;
                            end
    end 
    
 always@(posedge clk or posedge reset)
 begin
        if (reset)
          begin
            reg1<= 0;
           end
                else if(push)
                    begin
                        reg1 <= reg0;
                    end
                          else 
                            begin
                                reg1=reg1;
                            end
    end 
 
 always@(posedge clk or posedge reset)
 begin
        if (reset)
          begin
            reg2<= 0;
           end
                else if(push)
                    begin
                        reg2 <= reg1;
                    end
                          else 
                            begin
                                reg2=reg2;
                            end
    end 
 
 always@(posedge clk or posedge reset)
 begin
        if (reset)
          begin
            reg3<= 0;
           end
                else if(push)
                    begin
                        reg3 <= reg2;
                    end
                          else 
                            begin
                                reg3=reg3;
                            end
    end 
    
Counter_h UUT(.push(push),
.rst(reset),
//.clk(clk),
.pop(pop),
.en(en),
.count(count)
);
    
assign    fifo_full= count[2]&(~count[1])&(~count[0]);
assign    fifo_empty= (~count[2])&(~count[1])&(~count[0]);

    
always@(*) begin
	   case(count)
		  2'b00: data_out = reg0;
		  2'b01: data_out = reg1;
		  2'b10: data_out = reg2;
		  2'b11: data_out = reg3;
	   endcase
end
    
    
endmodule
