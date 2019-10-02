`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:23:21 11/05/2017 
// Design Name: 
// Module Name:    IMG_JPEG_COMPRESSION 
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
module IMG_JPEG_COMPRESSION(
    
I11_final, I12_final, I13_final, I14_final, I15_final, I16_final, I17_final, I18_final,
I21_final, I22_final, I23_final, I24_final, I25_final, I26_final, I27_final, I28_final,
I31_final, I32_final, I33_final, I34_final, I35_final, I36_final, I37_final, I38_final,
I41_final, I42_final, I43_final, I44_final, I45_final, I46_final, I47_final, I48_final,
I51_final, I52_final, I53_final, I54_final, I55_final, I56_final, I57_final, I58_final,
I61_final, I62_final, I63_final, I64_final, I65_final, I66_final, I67_final, I68_final,
I71_final, I72_final, I73_final, I74_final, I75_final, I76_final, I77_final, I78_final,
I81_final, I82_final, I83_final, I84_final, I85_final, I86_final, I87_final, I88_final,

H00, H01, H02, H03, H04, H05, H06, H07,
H10, H11, H12, H13, H14, H15, H16, H17,
H20, H21, H22, H23, H24, H25, H26, H27,
H30, H31, H32, H33, H34, H35, H36, H37,
H40, H41, H42, H43, H44, H45, H46, H47,
H50, H51, H52, H53, H54, H55, H56, H57,
H60, H61, H62, H63, H64, H65, H66, H67,
H70, H71, H72, H73, H74, H75, H76, H77	 
	 
);

output  [15:0] I11_final, I12_final, I13_final, I14_final, I15_final, I16_final, I17_final, I18_final;
output  [15:0] I21_final, I22_final, I23_final, I24_final, I25_final, I26_final, I27_final, I28_final;
output  [15:0] I31_final, I32_final, I33_final, I34_final, I35_final, I36_final, I37_final, I38_final;
output  [15:0] I41_final, I42_final, I43_final, I44_final, I45_final, I46_final, I47_final, I48_final;
output  [15:0] I51_final, I52_final, I53_final, I54_final, I55_final, I56_final, I57_final, I58_final;
output  [15:0] I61_final, I62_final, I63_final, I64_final, I65_final, I66_final, I67_final, I68_final;
output  [15:0] I71_final, I72_final, I73_final, I74_final, I75_final, I76_final, I77_final, I78_final;
output  [15:0] I81_final, I82_final, I83_final, I84_final, I85_final, I86_final, I87_final, I88_final;

input[15:0] H00, H01, H02, H03, H04, H05, H06, H07;
input[15:0] H10, H11, H12, H13, H14, H15, H16, H17;
input[15:0] H20, H21, H22, H23, H24, H25, H26, H27;
input[15:0] H30, H31, H32, H33, H34, H35, H36, H37;
input[15:0] H40, H41, H42, H43, H44, H45, H46, H47;
input[15:0] H50, H51, H52, H53, H54, H55, H56, H57;
input[15:0] H60, H61, H62, H63, H64, H65, H66, H67;
input[15:0] H70, H71, H72, H73, H74, H75, H76, H77;

wire[15:0] D11_final, D12_final, D13_final, D14_final, D15_final, D16_final, D17_final, D18_final;
wire[15:0] D21_final, D22_final, D23_final, D24_final, D25_final, D26_final, D27_final, D28_final;
wire[15:0] D31_final, D32_final, D33_final, D34_final, D35_final, D36_final, D37_final, D38_final;
wire[15:0] D41_final, D42_final, D43_final, D44_final, D45_final, D46_final, D47_final, D48_final;
wire[15:0] D51_final, D52_final, D53_final, D54_final, D55_final, D56_final, D57_final, D58_final;
wire[15:0] D61_final, D62_final, D63_final, D64_final, D65_final, D66_final, D67_final, D68_final;
wire[15:0] D71_final, D72_final, D73_final, D74_final, D75_final, D76_final, D77_final, D78_final;
wire[15:0] D81_final, D82_final, D83_final, D84_final, D85_final, D86_final, D87_final, D88_final;

DiscreteCosineTransform DCT1(

D11_final, D12_final, D13_final, D14_final, D15_final, D16_final, D17_final, D18_final,
D21_final, D22_final, D23_final, D24_final, D25_final, D26_final, D27_final, D28_final,
D31_final, D32_final, D33_final, D34_final, D35_final, D36_final, D37_final, D38_final,
D41_final, D42_final, D43_final, D44_final, D45_final, D46_final, D47_final, D48_final,
D51_final, D52_final, D53_final, D54_final, D55_final, D56_final, D57_final, D58_final,
D61_final, D62_final, D63_final, D64_final, D65_final, D66_final, D67_final, D68_final,
D71_final, D72_final, D73_final, D74_final, D75_final, D76_final, D77_final, D78_final,
D81_final, D82_final, D83_final, D84_final, D85_final, D86_final, D87_final, D88_final,

H00, H01, H02, H03, H04, H05, H06, H07,
H10, H11, H12, H13, H14, H15, H16, H17,
H20, H21, H22, H23, H24, H25, H26, H27,
H30, H31, H32, H33, H34, H35, H36, H37,
H40, H41, H42, H43, H44, H45, H46, H47,
H50, H51, H52, H53, H54, H55, H56, H57,
H60, H61, H62, H63, H64, H65, H66, H67,
H70, H71, H72, H73, H74, H75, H76, H77
);

Quantization quantize( 
I11_final, I12_final, I13_final, I14_final, I15_final, I16_final, I17_final, I18_final,
I21_final, I22_final, I23_final, I24_final, I25_final, I26_final, I27_final, I28_final,
I31_final, I32_final, I33_final, I34_final, I35_final, I36_final, I37_final, I38_final,
I41_final, I42_final, I43_final, I44_final, I45_final, I46_final, I47_final, I48_final,
I51_final, I52_final, I53_final, I54_final, I55_final, I56_final, I57_final, I58_final,
I61_final, I62_final, I63_final, I64_final, I65_final, I66_final, I67_final, I68_final,
I71_final, I72_final, I73_final, I74_final, I75_final, I76_final, I77_final, I78_final,
I81_final, I82_final, I83_final, I84_final, I85_final, I86_final, I87_final, I88_final,

H00, H01, H02, H03, H04, H05, H06, H07,
H10, H11, H12, H13, H14, H15, H16, H17,
H20, H21, H22, H23, H24, H25, H26, H27,
H30, H31, H32, H33, H34, H35, H36, H37,
H40, H41, H42, H43, H44, H45, H46, H47,
H50, H51, H52, H53, H54, H55, H56, H57,
H60, H61, H62, H63, H64, H65, H66, H67,
H70, H71, H72, H73, H74, H75, H76, H77   
);


endmodule
