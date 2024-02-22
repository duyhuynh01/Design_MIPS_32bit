`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:27:27 05/08/2021
// Design Name:   memory
// Module Name:   C:/Users/Administrator/MIPS/test_mem.v
// Project Name:  MIPS
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

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:26:31 05/06/2015 
// Design Name: 
// Module Name:    test_mem 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
// `timescale 1us / 1us
// `include "registerfile.v"

// Note: each memory location should be initialized to have value of its address

module test_mem();
   wire [31:0] data_out;

   reg [31:0] address;
   reg [31:0] data;
   reg        mem_read, mem_write;

   initial
     begin
        // $dumpfile("reg_test.vcd");
        // $dumpvars(0, reg_test);

        mem_read  = 1'b1;
        mem_write = 1'b0;
        address   = 32'b00000001;

        #1;
		  mem_read = 1'b0;
        mem_write = 1'b1;
        address   = 32'b00000001;
        data      = ~address;

        #1;
		  mem_read = 1;
        mem_write = 0;
        address   = 32'b00000010;

        #1;
		  mem_read = 1;
        mem_write = 1;
        address   = 32'b00000010;
        data      = ~address;

        #1;
		  mem_read = 1;
        mem_write = 0;
        address   = 32'b00000100;

        #1;
		  mem_read = 0;
        mem_write = 1;
        address   = 32'b00000100;
        data      = ~address;
        
        #1;
		  mem_read = 1;
        mem_write = 0;
        address   = 32'b00001000;

        #1;
		  mem_read = 1;
        mem_write = 1;
        address   = 32'b00001000;
        data      = ~address;
        
        #1;
		  $finish;
     end

   data_memory data_memory1(
						.address(address),
						.write_data(data),
						.memread(mem_read),
						.memwrite(mem_write),
                  .read_data(data_out));





endmodule
