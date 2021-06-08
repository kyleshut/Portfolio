`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2021 07:56:45 AM
// Design Name: 
// Module Name: testbenchInstructionMemory
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


module testbenchInstructionMemory();
reg [7:0] address;
wire [7:0] instruction;
reg [7:0] memory [0:254];
instructionMemory UUT(.address(address),.instruction(instruction));


initial
begin
memory[0] = 8'b00001000;
memory[1] = 8'b00101000;
memory[2] = 8'b01000000;
memory[3] = 8'b01100000;
memory[4] = 8'b10001000;
memory[5] = 8'b10110000;
address = 8'b00000000;
#5
address<=address + 8'b00000001;
#5
address<=address + 8'b00000001;
#5
address<=address + 8'b00000001;
#5
address<=address + 8'b00000001;
#5
address<=address + 8'b00000001;
end

/*always@(posedge clock)
begin
address<=address + 8'b00000001;
end
*/
endmodule