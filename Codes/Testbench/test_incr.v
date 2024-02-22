`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// 
// Design Name: 
// Module Name:    test_incr 
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
module test_incr();

// Port Wires
	wire [31:0] IncrOut;
	
// Register Declarations
	reg [31:0] A;
	
	incrementer incr (
		.pcin(A),
		.pcout(IncrOut)
		); // instantiate the incrementer
	
	initial begin

	A = 3;
	#10;
	A = 15;
	#10;
	A = 64;
	#5;
	$finish;
	end
	
	
	always @(A)
		#1 $display("Time = %0d\tA=%0d\tIncrOut=%0d",$time, A, IncrOut);

endmodule // test
