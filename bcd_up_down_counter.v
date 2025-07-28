`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 07:48:49
// Design Name: 
// Module Name: bcd_up_down_counter
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


module bcd_up_down_counter(clk , reset , count, updown);
input clk , reset;
input updown; // 1 for UP and 0 for DOWN
output [3:0]count;
reg [3:0] count;
always@(posedge(clk) or posedge(reset))
begin
if(reset == 1) begin  // active high reset
count <= 4'b0000;
end else if(updown == 1) begin
if(count == 4'b1001) begin
count <= 4'b0000;
end else begin
count <= count +1;
end
end else if(updown == 0) begin
if(count == 4'b0000) begin
count <= 4'b1001;
end else begin
count <= count -1;
end
end
end
endmodule
