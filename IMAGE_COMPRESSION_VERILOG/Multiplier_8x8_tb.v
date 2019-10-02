`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:42:29 11/01/2017
// Design Name:   Multiplier_8x8
// Module Name:   C:/Users/Maharsh Suryawala/Desktop/Functions/IMG/Multiplier_8x8_tb.v
// Project Name:  IMG
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Multiplier_8x8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Multiplier_8x8_tb;

	// Inputs
	reg F;
	reg [15:0] H;
	reg [15:0] D;

	// Instantiate the Unit Under Test (UUT)
	Multiplier_8x8 uut (
		.F(F), 
		.H(H), 
		.D(D)
	);

	initial begin
		// Initialize Inputs
		F = 0;
		H = 0;
		D = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

