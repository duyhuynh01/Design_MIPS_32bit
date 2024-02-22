// Class: CSCI 401 Computer Architecture
// Term: SPR11
// Name(s): 
//
// Lab #1: Instruction Fetch Stage

//                              -*- Mode: Verilog -*-
// Filename        : mem.v
// Description     : The instruction memory module
//                   of the IF stage of the pipeline
// Authors         : George M. Georgiou and Scott McWilliams
// Created On      : 2/06/2003
// Modified On     : 4/5/2011
// Modified By     : Jason Fredrick and David Sturgeon

module memory (
   output reg [31:0] data,       // Output of Instruction Memory
   input wire [31:0] addr        // Input of Instruction Memory
   );

// Register Declarations
   reg [31:0] MEM[0:127];  // 128 words of 32-bit memory

	integer i;

// Initialize Registers
   initial begin	
		$readmemb("/home/ise/Xilinx/ProcessorMIPS/risc.txt",MEM);
   end
   
   always @(addr) begin
		data <= MEM[addr];
	end
endmodule // memory
