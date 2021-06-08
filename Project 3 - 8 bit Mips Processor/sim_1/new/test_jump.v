`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2021 22:00:25
// Design Name: 
// Module Name: test_jump
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


module test_jump();
  reg [7:0] inp;
  wire [7:0] address;
  
  jump jump_test(.inp(inp),.address(address));
  
  initial begin
    
    inp = 8'b00000100; 


end
endmodule