`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 08:03:01
// Design Name: 
// Module Name: bcd_tb
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


module bcd_tb();
reg clk;
reg reset;
reg updown;

wire [3:0] count;
bcd_up_down_counter uut(.clk(clk) , .reset(reset)
                      , .count(count) , .updown(updown));
initial clk = 0;
always #5 clk = ~clk; // 10ns timeperiod
initial
begin
updown = 0;
#300;
updown = 1;
 #300;
reset = 1;
updown = 0;
#100;
reset = 0;  
end
endmodule
