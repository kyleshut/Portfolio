`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2021 04:34:00 AM
// Design Name: 
// Module Name: mux
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


module mux(first, second, selectLine, outputData);
input [0:7] first;
input [0:7] second; 
input selectLine; 
output reg [0:7] outputData;

always@(*)
begin
if(selectLine == 0)
begin
outputData <= first;
end
else
begin
outputData <= second;
end
end

//assign outData=(selectLine)?second:first;
endmodule
