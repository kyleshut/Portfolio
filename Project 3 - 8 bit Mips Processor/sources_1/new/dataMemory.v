`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2021 08:27:00 AM
// Design Name: 
// Module Name: dataMemory
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


module dataMemory(clock,memReadSignal, memWriteSignal, address, writeData, dataOut);

input clock; 
input memReadSignal;
input memWriteSignal; 
input [7:0] address;
input [7:0] writeData;
output [7:0] dataOut; 
reg [7:0] dataMemory [0:255];

always@(posedge clock)
begin
if(memWriteSignal)
begin
 dataMemory[address] <= writeData;
 end
end

assign  dataOut = memReadSignal ? dataMemory[address] : 7'bx;
endmodule
