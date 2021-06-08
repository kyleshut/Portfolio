`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.04.2021 00:24:07
// Design Name: 
// Module Name: testsub
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



module testsub();
  
  reg [7:0] IN1,IN2;
  wire [7:0] RES;
  wire CO;
  
  subtr test_sub(.A(IN1),.B(IN2),.RES(RES),.CO(CO));
  
  initial begin
    
    IN1 = 8'd0; IN2 = 8'd0;

#50 IN1 = 8'd0;   IN2 = 8'd1;  
#50 IN1 = 8'd5;   IN2 = 8'd2;
#50 IN1 = 8'd7;   IN2 = 8'd4;
#50 IN1 = 8'd10;   IN2 = 8'd8;

end


endmodule