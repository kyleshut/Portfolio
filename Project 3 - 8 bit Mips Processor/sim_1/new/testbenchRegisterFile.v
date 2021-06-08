`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2021 04:08:28 PM
// Design Name: 
// Module Name: testbenchRegisterFile
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


module testbenchRegisterFile();
reg clock;
reg read_reg1;
reg read_reg2;
reg write_reg;
reg [7:0] write_data;
wire [7:0] read_data1;
wire [7:0] read_data2;
reg [7:0] registers [0:1];
registerFile UUT(.clock(clock),.read_reg1(read_reg1), .read_reg2(read_reg2), .write_reg(write_reg), .write_data(write_data), .read_data1(read_data1), .read_data2(read_data2));
initial
begin 
clock = 0;  
registers[0] = 8'b00001000;
registers[1] = 8'b00001001;
read_reg1 = 0;
read_reg2 = 1;
write_reg = read_reg1;
write_data = 8'b00000101;
#5
clock = 1;
#5
clock = 0; 
write_reg = read_reg2;
write_data = 8'b00000010;
#5
clock = 1; 
end 
always@(posedge clock)
begin
/*if (write_reg == 1)*/
    registers[write_reg] <= write_data;
end

endmodule
