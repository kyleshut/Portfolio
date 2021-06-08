`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2021 04:34:43 AM
// Design Name: 
// Module Name: muxTestBench
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


module muxTestBench();
reg [0:7] first;
reg [0:7] second; 
reg selectLine; 
wire [0:7] outputData;
mux UUT(.first(first),.second(second), .selectLine(selectLine), .outputData(outputData));
initial 
begin 
first = 8'b00001000;
second = 8'b00000100;

selectLine = 0; 
#5
first =  8'b00000010;
second = 8'b00000111;
selectLine = 1; 

end

endmodule
