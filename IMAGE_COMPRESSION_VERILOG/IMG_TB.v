`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:57:15 10/30/2017
// Design Name:   DCT
// Module Name:   C:/Users/Maharsh Suryawala/Desktop/Functions/IMG/IMG_TB.v
// Project Name:  IMG
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DCT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module IMG_TB;

	// Inputs
	reg clk;

	// Instantiate the Unit Under Test (UUT)
	DCT uut (
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
always #500 clk = ~clk;      
endmodule
