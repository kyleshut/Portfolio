`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2021 05:06:40 PM
// Design Name: 
// Module Name: instructionMemory
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


module instructionMemory(address, instruction);
input [7:0] address;
output reg [7:0] instruction;
reg [7:0] memory [0:254];
initial
begin

memory[0] = 8'b10000010;
memory[1] = 8'b01100000;
memory[2] = 8'b10110000;
memory[3] = 8'b00110000;
memory[4] = 8'b00000000;
memory[5] = 8'b01100000;

//memory[5] = 8'b01100000;
end

/*always@(posedge clock)
begin
instruction <= memory[address];
end*/

always@(*)
begin
instruction <= memory[address];
end

endmodule
