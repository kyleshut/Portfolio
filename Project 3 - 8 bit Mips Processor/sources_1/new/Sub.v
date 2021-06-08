`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.04.2021 16:36:32
// Design Name: 
// Module Name: Sub
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

module subtr(A, B, RES);  
input  [7:0] A;  
input  [7:0] B;  
output [7:0] RES; 
 
  assign RES = A - B;  
endmodule