`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2021 03:59:11 AM
// Design Name: 
// Module Name: testbenchControl
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


module testbenchControl();
reg [2:0] opcode;
wire aluSrc;
wire memToReg;
wire memRead;
wire memWrite;
wire jump;
control UUT(.opcode(opcode), .aluSrc(aluSrc), .memToReg(memToReg), .memRead(memRead), .memWrite(memWrite), .jump(jump)); 
initial
begin 
opcode <= 3'b000;
#5
opcode <= 3'b001;
#5
opcode <= 3'b010;
#5
opcode <= 3'b011;
#5
opcode <= 3'b100;
#5
opcode <= 3'b101;
end 
endmodule
