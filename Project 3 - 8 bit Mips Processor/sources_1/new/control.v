//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2021 03:56:31 AM
// Design Name: 
// Module Name: control
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


module control(opcode, aluSrc, memToReg, memRead, memWrite, jump);
input [2:0] opcode;
output reg aluSrc;
output reg memToReg;
output reg memRead;
output reg memWrite;
output reg jump;
always@(*)
begin
case (opcode)
3'b000:
    begin
    aluSrc = 1;
    memToReg = 1; 
    memRead = 1;
    memWrite = 0; 
    jump = 0; 
    end
3'b001:
    begin
    aluSrc = 1;
    memToReg = 0; 
    memRead = 0;
    memWrite = 1; 
    jump = 0;
    end
3'b010:
    begin
    aluSrc = 0;
    memToReg = 0; 
    memRead = 0;
    memWrite = 0; 
    jump = 1;
    end
3'b011:
    begin

    aluSrc = 0;
    memToReg = 0; 
    memRead = 0;
    memWrite = 0; 
    jump = 0; 
    end
    
3'b100:
    begin
    aluSrc = 1;
    memToReg = 0; 
    memRead = 0;
    memWrite = 0; 
    jump = 0; 
    end
    
3'b101:
    begin
    aluSrc = 0;
    memToReg = 0; 
    memRead = 0;
    memWrite = 0; 
    jump = 0; 
    end
endcase
end

endmodule
