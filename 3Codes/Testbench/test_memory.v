`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:13:34 06/12/2021
// Design Name:   memory
// Module Name:   C:/Users/Administrator/mem/test_memory.v
// Project Name:  mem
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_memory;

	// Inputs
	reg [31:0] addr;

	// Outputs
	wire [31:0] data;

	// Instantiate the Unit Under Test (UUT)
	memory uut (
		.data(data), 
		.addr(addr)
	);

	initial begin
		// Initialize Inputs
		addr = 32'h0000;
		#10;
		addr = 32'h0001;
		#10;
		addr = 32'h0002;
		#10;
		addr = 32'h0003;
		#10;
		addr = 32'h0004;
		$finish;
				
	end
      
endmodule

