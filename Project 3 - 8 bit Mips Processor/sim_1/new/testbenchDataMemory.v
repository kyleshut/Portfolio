`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2021 08:27:32 AM
// Design Name: 
// Module Name: testbenchDataMemory
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


module testbenchDataMemory();
reg clock;
reg [7:0] address;
reg [7:0] writeData;
wire [7:0] dataOut;
reg [7:0] dataMemory [0:255];
reg memReadSignal, memWriteSignal;
dataMemory UUT(.clock(clock),.memReadSignal(memReadSignal), .memWriteSignal(memWriteSignal), .address(address), .writeData(writeData), .dataOut(dataOut));
initial
begin 
clock = 0;  
memReadSignal = 0;
memWriteSignal = 1;
dataMemory[0] = 8'b00001000;
dataMemory[1] = 8'b00001001;
dataMemory[2] = 8'b00000001;
dataMemory[3] = 8'b00000101;
address = 8'b00000000;
writeData = 8'b00000110;
#5
clock = 1;
#5
clock = 0; 
address = 8'b00000000;
writeData = 8'b00000100;
#5
clock = 1; 
#5
clock = 0;
address = 8'b00000110;
writeData = 8'b00001001;
#5 
clock = 1; 
end 

always@(posedge clock)
begin
    dataMemory[address] <= writeData;
end


endmodule