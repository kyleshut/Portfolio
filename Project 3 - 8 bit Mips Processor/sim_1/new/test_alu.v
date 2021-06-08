`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.04.2021 21:20:41
// Design Name: 
// Module Name: test_alu
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


module test_alu();
  reg [7:0] reg1,reg2;
  reg [2:0] ALUControl;
  wire [7:0] result;
  
  ALU alu_test(.reg1(reg1),.reg2(reg2),.ALUControl(ALUControl),.result(result));
  
  initial begin
    
    reg1 = 8'd0; reg2 = 8'd0;ALUControl = 3'b011;

#50 reg1 = 8'd0; reg2 = 8'd0;ALUControl = 3'b011; 
#50 reg1 = 8'd3; reg2 = 8'd2;ALUControl = 3'b101;
#50 reg1 = 8'd3; reg2 = 8'd0;ALUControl = 3'b100; 

end


endmodule