  
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2021 16:37:35
// Design Name: 
// Module Name: Add
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

module adder(A, B, SUM, CO);  
input  [7:0] A;  
input  [7:0] B;  
output [7:0] SUM;  
output CO;  
wire [8:0] tmp; 
 
  assign tmp = A + B;  
  assign SUM = tmp [7:0];  
  assign CO  = tmp [8];  
endmodule 