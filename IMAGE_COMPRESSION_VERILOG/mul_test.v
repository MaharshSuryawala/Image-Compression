`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:04:24 11/04/2017
// Design Name:   DiscreteCosineTransform
// Module Name:   C:/Users/Maharsh Suryawala/Desktop/Functions/IMG/mul_test.v
// Project Name:  IMG
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DiscreteCosineTransform
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mul_test;

	// Inputs
	reg [15:0] datain;
	reg clk;
	reg reset;

	// Outputs
	wire [31:0] D11_final;
	wire [31:0] D12_final;
	wire [31:0] D13_final;
	wire [31:0] D14_final;
	wire [31:0] D15_final;
	wire [31:0] D16_final;
	wire [31:0] D17_final;
	wire [31:0] D18_final;
	wire [31:0] D21_final;
	wire [31:0] D22_final;
	wire [31:0] D23_final;
	wire [31:0] D24_final;
	wire [31:0] D25_final;
	wire [31:0] D26_final;
	wire [31:0] D27_final;
	wire [31:0] D28_final;
	wire [31:0] D31_final;
	wire [31:0] D32_final;
	wire [31:0] D33_final;
	wire [31:0] D34_final;
	wire [31:0] D35_final;
	wire [31:0] D36_final;
	wire [31:0] D37_final;
	wire [31:0] D38_final;
	wire [31:0] D41_final;
	wire [31:0] D42_final;
	wire [31:0] D43_final;
	wire [31:0] D44_final;
	wire [31:0] D45_final;
	wire [31:0] D46_final;
	wire [31:0] D47_final;
	wire [31:0] D48_final;
	wire [31:0] D51_final;
	wire [31:0] D52_final;
	wire [31:0] D53_final;
	wire [31:0] D54_final;
	wire [31:0] D55_final;
	wire [31:0] D56_final;
	wire [31:0] D57_final;
	wire [31:0] D58_final;
	wire [31:0] D61_final;
	wire [31:0] D62_final;
	wire [31:0] D63_final;
	wire [31:0] D64_final;
	wire [31:0] D65_final;
	wire [31:0] D66_final;
	wire [31:0] D67_final;
	wire [31:0] D68_final;
	wire [31:0] D71_final;
	wire [31:0] D72_final;
	wire [31:0] D73_final;
	wire [31:0] D74_final;
	wire [31:0] D75_final;
	wire [31:0] D76_final;
	wire [31:0] D77_final;
	wire [31:0] D78_final;
	wire [31:0] D81_final;
	wire [31:0] D82_final;
	wire [31:0] D83_final;
	wire [31:0] D84_final;
	wire [31:0] D85_final;
	wire [31:0] D86_final;
	wire [31:0] D87_final;
	wire [31:0] D88_final;

	// Instantiate the Unit Under Test (UUT)
	DiscreteCosineTransform uut (
		.D11_final(D11_final), 
		.D12_final(D12_final), 
		.D13_final(D13_final), 
		.D14_final(D14_final), 
		.D15_final(D15_final), 
		.D16_final(D16_final), 
		.D17_final(D17_final), 
		.D18_final(D18_final), 
		.D21_final(D21_final), 
		.D22_final(D22_final), 
		.D23_final(D23_final), 
		.D24_final(D24_final), 
		.D25_final(D25_final), 
		.D26_final(D26_final), 
		.D27_final(D27_final), 
		.D28_final(D28_final), 
		.D31_final(D31_final), 
		.D32_final(D32_final), 
		.D33_final(D33_final), 
		.D34_final(D34_final), 
		.D35_final(D35_final), 
		.D36_final(D36_final), 
		.D37_final(D37_final), 
		.D38_final(D38_final), 
		.D41_final(D41_final), 
		.D42_final(D42_final), 
		.D43_final(D43_final), 
		.D44_final(D44_final), 
		.D45_final(D45_final), 
		.D46_final(D46_final), 
		.D47_final(D47_final), 
		.D48_final(D48_final), 
		.D51_final(D51_final), 
		.D52_final(D52_final), 
		.D53_final(D53_final), 
		.D54_final(D54_final), 
		.D55_final(D55_final), 
		.D56_final(D56_final), 
		.D57_final(D57_final), 
		.D58_final(D58_final), 
		.D61_final(D61_final), 
		.D62_final(D62_final), 
		.D63_final(D63_final), 
		.D64_final(D64_final), 
		.D65_final(D65_final), 
		.D66_final(D66_final), 
		.D67_final(D67_final), 
		.D68_final(D68_final), 
		.D71_final(D71_final), 
		.D72_final(D72_final), 
		.D73_final(D73_final), 
		.D74_final(D74_final), 
		.D75_final(D75_final), 
		.D76_final(D76_final), 
		.D77_final(D77_final), 
		.D78_final(D78_final), 
		.D81_final(D81_final), 
		.D82_final(D82_final), 
		.D83_final(D83_final), 
		.D84_final(D84_final), 
		.D85_final(D85_final), 
		.D86_final(D86_final), 
		.D87_final(D87_final), 
		.D88_final(D88_final), 
		.datain(datain), 
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		datain = 0;
		clk = 0;
		reset = 0;
		
		

		// Wait 100 ns for global reset to finish
		#100;
		
datain=16'b0001110000000000;
#1000;
datain=16'b0010000000000000;
#1000;
datain=16'b0001110000000000;
#1000;
datain=16'b0010000000000000;
#1000;
datain=16'b0001110000000000;
#1000;
datain=16'b0001101100000000;
#1000;
datain=16'b0001110000000000;
#1000;
datain=16'b0001111100000000;
#1000;

datain=16'b0001111100000000;
#1000;
datain=16'b0001101000000000;
#1000;
datain=16'b0001111100000000;
#1000;
datain=16'b0001101000000000;
#1000;
datain=16'b0001100100000000;
#1000;
datain=16'b0001101100000000;
#1000;
datain=16'b0001100100000000;
#1000;
datain=16'b0001111100000000;
#1000;

datain=16'b0001111000000000;
#1000;
datain=16'b0001110100000000;
#1000;
datain=16'b0001111000000000;
#1000;
datain=16'b0001110100000000;
#1000;
datain=16'b0001101100000000;
#1000;
datain=16'b0001101100000000;
#1000;
datain=16'b0001110100000000;
#1000;
datain=16'b0001110000000000;
#1000;

datain=16'b0001101100000000;
#1000;
datain=16'b0001111000000000;
#1000;
datain=16'b0001101100000000;
#1000;
datain=16'b0001111000000000;
#1000;
datain=16'b0001111100000000;
#1000;
datain=16'b0001110100000000;
#1000;
datain=16'b0001110000000000;
#1000;
datain=16'b0001111000000000;
#1000;

datain=16'b0001111000000000;
#1000;
datain=16'b0001110100000000;
#1000;
datain=16'b0001111000000000;
#1000;
datain=16'b0001110100000000;
#1000;
datain=16'b0001111100000000;
#1000;
datain=16'b0001110000000000;
#1000;
datain=16'b0001100100000000;
#1000;
datain=16'b0001110000000000;
#1000;


datain=16'b0001110000000000;
#1000;
datain=16'b0001111100000000;
#1000;
datain=16'b0001110000000000;
#1000;
datain=16'b0001111100000000;
#1000;
datain=16'b0001101100000000;
#1000;
datain=16'b0001111100000000;
#1000;
datain=16'b0001101100000000;
#1000;
datain=16'b0001111100000000;
#1000;

datain=16'b0001111100000000;
#1000;
datain=16'b0001111000000000;
#1000;
datain=16'b0001111100000000;
#1000;
datain=16'b0001111000000000;
#1000;
datain=16'b0001110000000000;
#1000;
datain=16'b0001100000000000;
#1000;
datain=16'b0001101000000000;
#1000;
datain=16'b0001110100000000;
#1000;


datain=16'b0001111000000000;
#1000;
datain=16'b0001111000000000;
#1000;
datain=16'b0001111000000000;
#1000;
datain=16'b0001111000000000;
#1000;
datain=16'b0001101100000000;
#1000;
datain=16'b0001111000000000;
#1000;
datain=16'b0001101100000000;
#1000;
datain=16'b0010000100000000;
#1000;
        
		// Add stimulus here

	end
	always #500 clk = ~clk;    
      
endmodule

