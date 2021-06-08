`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/12/2021 07:38:44 PM
// Design Name: 
// Module Name: testbenchProcessor
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


module testbenchProcessor();
reg clock;
wire [7:0] addressOutput; 

wire [7:0] aluOutput;
wire [7:0] instructionOutput; 
wire [2:0] opcodeOutput;
wire aluSrcOutput, memToRegOutput, memReadOutput, memWriteOutput, jumpOutput;
wire [7:0] read_data1Output, read_data2Output;
wire [2:0] immediateOutput;
wire [7:0] immediateExtOut;
wire [7:0] aluInput2Output;
wire [7:0] aluResultOutput;
wire [7:0] dataMemoryread_dataOutput;
wire [7:0] write_dataOutput;
wire read_reg1Output, read_reg2Output;
//unit under test 
processor UUT(.clock(clock),
.addressOutput(addressOutput) ,
.aluOutput(aluOutput),
.instructionOutput(instructionOutput), 
.opcodeOutput(opcodeOutput),
.aluSrcOutput(aluSrcOutput),
.memToRegOutput(memToRegOutput),
.memReadOutput(memReadOutput),
.memWriteOutput(memWriteOutput),
.jumpOutput(jumpOutput),
.read_reg1Output(read_reg1Output),
.read_reg2Output(read_reg2Output),
.read_data1Output(read_data1Output),
.read_data2Output(read_data2Output),
.immediateOutput(immediateOutput),
.immediateExtOut(immediateExtOut),
.aluInput2Output(aluInput2Output),
.aluResultOutput(aluResultOutput),
.dataMemoryread_dataOutput(dataMemoryread_dataOutput),
.write_dataOutput(write_dataOutput)
 );
always #5 clock=~clock;

initial
begin
clock = 0; 
end
endmodule