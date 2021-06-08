`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.04.2021 02:15:22
// Design Name: 
// Module Name: signext
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


/*
module signext( input  [2:0] a,
                output [7:0] y 
                );

    assign y = { {5{a[2]}} , a[2:0]};

endmodule
*/
module signext(in, out);
  input [2:0] in;
  output [7:0] out;

  assign out = {{5{in[2]}},in};
endmodule