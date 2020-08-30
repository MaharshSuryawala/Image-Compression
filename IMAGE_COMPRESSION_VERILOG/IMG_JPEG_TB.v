`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:34:13 11/05/2017
// Design Name:   IMG_JPEG_COMPRESSION
// Module Name:   C:/Users/Maharsh Suryawala/Desktop/Functions/IMG/IMG_JPEG_TB.v
// Project Name:  IMG
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: IMG_JPEG_COMPRESSION
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module IMG_JPEG_TB;

	// Inputs
	reg [15:0] H00;
	reg [15:0] H01;
	reg [15:0] H02;
	reg [15:0] H03;
	reg [15:0] H04;
	reg [15:0] H05;
	reg [15:0] H06;
	reg [15:0] H07;
	reg [15:0] H10;
	reg [15:0] H11;
	reg [15:0] H12;
	reg [15:0] H13;
	reg [15:0] H14;
	reg [15:0] H15;
	reg [15:0] H16;
	reg [15:0] H17;
	reg [15:0] H20;
	reg [15:0] H21;
	reg [15:0] H22;
	reg [15:0] H23;
	reg [15:0] H24;
	reg [15:0] H25;
	reg [15:0] H26;
	reg [15:0] H27;
	reg [15:0] H30;
	reg [15:0] H31;
	reg [15:0] H32;
	reg [15:0] H33;
	reg [15:0] H34;
	reg [15:0] H35;
	reg [15:0] H36;
	reg [15:0] H37;
	reg [15:0] H40;
	reg [15:0] H41;
	reg [15:0] H42;
	reg [15:0] H43;
	reg [15:0] H44;
	reg [15:0] H45;
	reg [15:0] H46;
	reg [15:0] H47;
	reg [15:0] H50;
	reg [15:0] H51;
	reg [15:0] H52;
	reg [15:0] H53;
	reg [15:0] H54;
	reg [15:0] H55;
	reg [15:0] H56;
	reg [15:0] H57;
	reg [15:0] H60;
	reg [15:0] H61;
	reg [15:0] H62;
	reg [15:0] H63;
	reg [15:0] H64;
	reg [15:0] H65;
	reg [15:0] H66;
	reg [15:0] H67;
	reg [15:0] H70;
	reg [15:0] H71;
	reg [15:0] H72;
	reg [15:0] H73;
	reg [15:0] H74;
	reg [15:0] H75;
	reg [15:0] H76;
	reg [15:0] H77;

	// Outputs
	wire [15:0] I11_final;
	wire [15:0] I12_final;
	wire [15:0] I13_final;
	wire [15:0] I14_final;
	wire [15:0] I15_final;
	wire [15:0] I16_final;
	wire [15:0] I17_final;
	wire [15:0] I18_final;
	wire [15:0] I21_final;
	wire [15:0] I22_final;
	wire [15:0] I23_final;
	wire [15:0] I24_final;
	wire [15:0] I25_final;
	wire [15:0] I26_final;
	wire [15:0] I27_final;
	wire [15:0] I28_final;
	wire [15:0] I31_final;
	wire [15:0] I32_final;
	wire [15:0] I33_final;
	wire [15:0] I34_final;
	wire [15:0] I35_final;
	wire [15:0] I36_final;
	wire [15:0] I37_final;
	wire [15:0] I38_final;
	wire [15:0] I41_final;
	wire [15:0] I42_final;
	wire [15:0] I43_final;
	wire [15:0] I44_final;
	wire [15:0] I45_final;
	wire [15:0] I46_final;
	wire [15:0] I47_final;
	wire [15:0] I48_final;
	wire [15:0] I51_final;
	wire [15:0] I52_final;
	wire [15:0] I53_final;
	wire [15:0] I54_final;
	wire [15:0] I55_final;
	wire [15:0] I56_final;
	wire [15:0] I57_final;
	wire [15:0] I58_final;
	wire [15:0] I61_final;
	wire [15:0] I62_final;
	wire [15:0] I63_final;
	wire [15:0] I64_final;
	wire [15:0] I65_final;
	wire [15:0] I66_final;
	wire [15:0] I67_final;
	wire [15:0] I68_final;
	wire [15:0] I71_final;
	wire [15:0] I72_final;
	wire [15:0] I73_final;
	wire [15:0] I74_final;
	wire [15:0] I75_final;
	wire [15:0] I76_final;
	wire [15:0] I77_final;
	wire [15:0] I78_final;
	wire [15:0] I81_final;
	wire [15:0] I82_final;
	wire [15:0] I83_final;
	wire [15:0] I84_final;
	wire [15:0] I85_final;
	wire [15:0] I86_final;
	wire [15:0] I87_final;
	wire [15:0] I88_final;

	// Instantiate the Unit Under Test (UUT)
	IMG_JPEG_COMPRESSION uut (
		.I11_final(I11_final), 
		.I12_final(I12_final), 
		.I13_final(I13_final), 
		.I14_final(I14_final), 
		.I15_final(I15_final), 
		.I16_final(I16_final), 
		.I17_final(I17_final), 
		.I18_final(I18_final), 
		.I21_final(I21_final), 
		.I22_final(I22_final), 
		.I23_final(I23_final), 
		.I24_final(I24_final), 
		.I25_final(I25_final), 
		.I26_final(I26_final), 
		.I27_final(I27_final), 
		.I28_final(I28_final), 
		.I31_final(I31_final), 
		.I32_final(I32_final), 
		.I33_final(I33_final), 
		.I34_final(I34_final), 
		.I35_final(I35_final), 
		.I36_final(I36_final), 
		.I37_final(I37_final), 
		.I38_final(I38_final), 
		.I41_final(I41_final), 
		.I42_final(I42_final), 
		.I43_final(I43_final), 
		.I44_final(I44_final), 
		.I45_final(I45_final), 
		.I46_final(I46_final), 
		.I47_final(I47_final), 
		.I48_final(I48_final), 
		.I51_final(I51_final), 
		.I52_final(I52_final), 
		.I53_final(I53_final), 
		.I54_final(I54_final), 
		.I55_final(I55_final), 
		.I56_final(I56_final), 
		.I57_final(I57_final), 
		.I58_final(I58_final), 
		.I61_final(I61_final), 
		.I62_final(I62_final), 
		.I63_final(I63_final), 
		.I64_final(I64_final), 
		.I65_final(I65_final), 
		.I66_final(I66_final), 
		.I67_final(I67_final), 
		.I68_final(I68_final), 
		.I71_final(I71_final), 
		.I72_final(I72_final), 
		.I73_final(I73_final), 
		.I74_final(I74_final), 
		.I75_final(I75_final), 
		.I76_final(I76_final), 
		.I77_final(I77_final), 
		.I78_final(I78_final), 
		.I81_final(I81_final), 
		.I82_final(I82_final), 
		.I83_final(I83_final), 
		.I84_final(I84_final), 
		.I85_final(I85_final), 
		.I86_final(I86_final), 
		.I87_final(I87_final), 
		.I88_final(I88_final), 
		.H00(H00), 
		.H01(H01), 
		.H02(H02), 
		.H03(H03), 
		.H04(H04), 
		.H05(H05), 
		.H06(H06), 
		.H07(H07), 
		.H10(H10), 
		.H11(H11), 
		.H12(H12), 
		.H13(H13), 
		.H14(H14), 
		.H15(H15), 
		.H16(H16), 
		.H17(H17), 
		.H20(H20), 
		.H21(H21), 
		.H22(H22), 
		.H23(H23), 
		.H24(H24), 
		.H25(H25), 
		.H26(H26), 
		.H27(H27), 
		.H30(H30), 
		.H31(H31), 
		.H32(H32), 
		.H33(H33), 
		.H34(H34), 
		.H35(H35), 
		.H36(H36), 
		.H37(H37), 
		.H40(H40), 
		.H41(H41), 
		.H42(H42), 
		.H43(H43), 
		.H44(H44), 
		.H45(H45), 
		.H46(H46), 
		.H47(H47), 
		.H50(H50), 
		.H51(H51), 
		.H52(H52), 
		.H53(H53), 
		.H54(H54), 
		.H55(H55), 
		.H56(H56), 
		.H57(H57), 
		.H60(H60), 
		.H61(H61), 
		.H62(H62), 
		.H63(H63), 
		.H64(H64), 
		.H65(H65), 
		.H66(H66), 
		.H67(H67), 
		.H70(H70), 
		.H71(H71), 
		.H72(H72), 
		.H73(H73), 
		.H74(H74), 
		.H75(H75), 
		.H76(H76), 
		.H77(H77)
	);

	initial begin
		// Initialize Inputs
		H00 = 0;
		H01 = 0;
		H02 = 0;
		H03 = 0;
		H04 = 0;
		H05 = 0;
		H06 = 0;
		H07 = 0;
		H10 = 0;
		H11 = 0;
		H12 = 0;
		H13 = 0;
		H14 = 0;
		H15 = 0;
		H16 = 0;
		H17 = 0;
		H20 = 0;
		H21 = 0;
		H22 = 0;
		H23 = 0;
		H24 = 0;
		H25 = 0;
		H26 = 0;
		H27 = 0;
		H30 = 0;
		H31 = 0;
		H32 = 0;
		H33 = 0;
		H34 = 0;
		H35 = 0;
		H36 = 0;
		H37 = 0;
		H40 = 0;
		H41 = 0;
		H42 = 0;
		H43 = 0;
		H44 = 0;
		H45 = 0;
		H46 = 0;
		H47 = 0;
		H50 = 0;
		H51 = 0;
		H52 = 0;
		H53 = 0;
		H54 = 0;
		H55 = 0;
		H56 = 0;
		H57 = 0;
		H60 = 0;
		H61 = 0;
		H62 = 0;
		H63 = 0;
		H64 = 0;
		H65 = 0;
		H66 = 0;
		H67 = 0;
		H70 = 0;
		H71 = 0;
		H72 = 0;
		H73 = 0;
		H74 = 0;
		H75 = 0;
		H76 = 0;
		H77 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		H00=16'b0001110000000000;
H01=16'b0010000000000000;
H02=16'b0001110000000000;
H03=16'b0010000000000000;
H04=16'b0001110000000000;
H05=16'b0001101100000000;
H06=16'b0001110000000000;
H07=16'b0001111100000000;

H10=16'b0001111100000000;
H11=16'b0001101000000000;
H12=16'b0001111100000000;
H13=16'b0001101000000000;
H14=16'b0001100100000000;
H15=16'b0001101100000000;
H16=16'b0001100100000000;
H17=16'b0001111100000000;

H20=16'b0001111000000000;
H21=16'b0001110100000000;
H22=16'b0001111000000000;
H23=16'b0001110100000000;
H24=16'b0001101100000000;
H25=16'b0001101100000000;
H26=16'b0001110100000000;
H27=16'b0001110000000000;

H30=16'b0001101100000000;
H31=16'b0001111000000000;
H32=16'b0001101100000000;
H33=16'b0001111000000000;
H34=16'b0001111100000000;
H35=16'b0001110100000000;
H36=16'b0001110000000000;
H37=16'b0001111000000000;

H40=16'b0001111000000000;
H41=16'b0001110100000000;
H42=16'b0001111000000000;
H43=16'b0001110100000000;
H44=16'b0001111100000000;
H45=16'b0001110000000000;
H46=16'b0001100100000000;
H47=16'b0001110000000000;


H50=16'b0001110000000000;
H51=16'b0001111100000000;
H52=16'b0001110000000000;
H53=16'b0001111100000000;
H54=16'b0001101100000000;
H55=16'b0001111100000000;
H56=16'b0001101100000000;
H57=16'b0001111100000000;

H60=16'b0001111100000000;
H61=16'b0001111000000000;
H62=16'b0001111100000000;
H63=16'b0001111000000000;
H64=16'b0001110000000000;
H65=16'b0001100000000000;
H66=16'b0001101000000000;
H67=16'b0001110100000000;


H70=16'b0001111000000000;
H71=16'b0001111000000000;
H72=16'b0001111000000000;
H73=16'b0001111000000000;
H74=16'b0001101100000000;
H75=16'b0001111000000000;
H76=16'b0001101100000000;
H77=16'b0010000100000000;

        
		// Add stimulus here

	end
      
endmodule

