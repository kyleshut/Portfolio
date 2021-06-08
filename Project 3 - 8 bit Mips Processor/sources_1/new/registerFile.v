`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2021 04:16:20 AM
// Design Name: 
// Module Name: registerFile
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


module registerFile(clock, read_reg1, read_reg2, write_reg, write_data, read_data1, read_data2);
input clock;
input read_reg1;
input read_reg2;
input write_reg;
input [7:0] write_data;
output [7:0] read_data1;
output [7:0] read_data2;
reg [7:0] registers [0:1];

initial 
begin 
registers[0] = 8'b00001000;
registers[1] = 8'b00001001;
end

always@(posedge clock)
begin
/*if (write_reg == 1)*/
    registers[write_reg] <= write_data;
end       

assign read_data1 = registers[read_reg1];
assign read_data2 = registers[read_reg2];


endmodule
