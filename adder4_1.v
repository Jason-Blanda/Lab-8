module adder4_1 (reset, clock, PC_in, PC_out_4);

input reset, clock; 
input [31:0] PC_in; 

output reg [31:0] PC_out_4;

always @ (posedge clock) begin

if (reset) 
PC_out_4 = 32'd0;

else 
PC_out_4 = PC_in + 32'd4; 
end
endmodule 
