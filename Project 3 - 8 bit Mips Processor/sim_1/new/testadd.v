`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////



module testadd();
  
  reg [7:0] IN1,IN2;
  wire [7:0] SUM;
  wire CO;
  
  adder inst(.A(IN1),.B(IN2),.SUM(SUM),.CO(CO));
  
  initial begin
    
    IN1 = 8'd0; IN2 = 8'd0;

#50 IN1 = 8'd0;   IN2 = 8'd1;  
#50 IN1 = 8'd1;   IN2 = 8'd2;
#50 IN1 = 8'd3;   IN2 = 8'd4;
#50 IN1 = 8'd7;   IN2 = 8'd8;

end


endmodule