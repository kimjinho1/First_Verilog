`timescale 1ns / 1ps

module Counter(
input push,
input pop,
input reset,
output reg [2:0] cnt
);

wire en;
assign en = push | pop;

always @*
 begin 
         if (reset)
           begin
            cnt <=0;
            end
                else if (en)
                begin
                    if (push == 1)
                    begin
                        if (cnt < 5) 
                        begin
                            cnt <= cnt + 1;
                        end
                    end
                   
                        else 
                        begin
                            if (cnt > 0) 
                            begin
                                cnt <= cnt - 1;
                            end     
                        end
                end
             else 
                begin
                    cnt<= cnt;
                end
 end
endmodule

