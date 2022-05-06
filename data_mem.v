module data_mem(
 input clk,
 input [15:0] mem_access_addr,
 input [15:0] mem_write_data,
 input mem_write_en,
 input mem_read,
 output [15:0] mem_read_data
);

reg [15:0] memory [15:0];
wire [2:0] ram_addr=mem_access_addr[2:0];
 
 always @(posedge clk) begin
  if (mem_write_en)
   memory[ram_addr] <= mem_write_data;
 end
 assign mem_read_data = (mem_read==1'b1) ? memory[ram_addr]: 16'd0; 

endmodule
