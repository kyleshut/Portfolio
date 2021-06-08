module programCounter(clock,address);
input clock;
output reg [7:0] address = 8'b00000000;
always@(posedge clock)
begin
address<=address + 8'b00000001;
end

endmodule