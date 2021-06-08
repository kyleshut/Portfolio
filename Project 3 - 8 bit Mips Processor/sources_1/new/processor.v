`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/11/2021 06:39:28 PM
// Design Name: 
// Module Name: processor
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

`include "instructionMemory.v"
`include "Alu.v"
`include "control.v"
`include "dataMemory.v"
`include "mux.v"
`include "pc.v"
`include "registerFile.v"
`include "signext.v"

module processor(clock,addressOutput, aluOutput, instructionOutput, opcodeOutput, aluSrcOutput, memToRegOutput, memReadOutput, memWriteOutput, jumpOutput, read_reg1Output, read_reg2Output, read_data1Output, read_data2Output, immediateOutput, immediateExtOut, aluInput2Output, aluResultOutput, dataMemoryread_dataOutput, write_dataOutput);
input clock;
//pc
output [7:0] addressOutput;
//instructionMemory
output [7:0] instructionOutput; 

//alu
output [7:0] aluOutput;


//control
output [2:0] opcodeOutput; 
output aluSrcOutput, memToRegOutput, memReadOutput, memWriteOutput, jumpOutput;

//registerFile
output read_reg1Output, read_reg2Output;
output [7:0] read_data1Output, read_data2Output;

//sign ext
output[2:0] immediateOutput;
output[7:0] immediateExtOut;

//mux -> alu
output [7:0] aluInput2Output;

//alu
output [7:0] aluResultOutput;

// dataMemoryRead
output [7:0] dataMemoryread_dataOutput;

//write_data
output [7:0] write_dataOutput;



// Program counter 
wire [7:0] pcCount, instruction;

// control
wire  aluSrc, memToReg, memRead, memWrite, jump;

//registerFile
wire read_reg1, read_reg2, write_reg;
wire [7:0] write_data, read_data1, read_data2;



// signExtend
wire [7:0] signExtOut;

//immediateExt 
wire [7:0] immediateExt;

// alu 
wire [7:0] aluInput2, aluResult;

// data memory
wire [7:0] dataMemoryread_data;


//breakDown instruction 

wire rtrd, rs;
wire [2:0] opcode, immediate;
wire [4:0] jumpAddress;

programCounter pc(.clock(clock), .address(pcCount));
assign addressOutput = pcCount; 
instructionMemory instrMemory(.address(pcCount),.instruction(instruction));   
assign instructionOutput = instruction;

assign opcode = instruction[7:5];
assign rtrd = instruction[4];
assign rs = instruction[3];
assign immediate = instruction[2:0];
assign jumpAddress = instruction[4:0];

control ctr(opcode, aluSrc, memToReg, memRead, memWrite, jump);

assign opcodeOutput = opcode;
assign aluSrcOutput = aluSrc;
assign memToRegOutput = memToReg;
assign memReadOutput = memRead;
assign memWriteOutput= memWrite;
assign jumpOutput = jump;

assign read_reg1 = rs;
assign read_reg2 = rtrd;
assign write_reg = rtrd;

registerFile rf(clock, read_reg1, read_reg2, write_reg, write_data, read_data1, read_data2);
assign read_reg1Output = read_reg1;
assign read_reg2Output = read_reg2;
assign read_data1Output = read_data1;
assign read_data2Output = read_data2;

signext immedExt(immediate,immediateExt);
assign immediateOutput = immediate;
assign immediateExtOut = immediateExt;

mux AluMux(read_data2, immediateExt,  aluSrc, aluInput2);
assign aluInput2Output = aluInput2;

Alu aluUnit(read_data1, aluInput2, opcode, aluResult);
assign aluResultOutput = aluResult;

dataMemory dMem(clock,memRead, memWrite, aluResult, read_data2, dataMemoryread_data);
assign dataMemoryread_dataOutput =  dataMemoryread_data;

assign write_data = memToReg ? dataMemoryread_data : aluResult;
assign write_dataOutput = write_data;

assign aluOutput = aluResult;

endmodule