`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:38:45 10/30/2017 
// Design Name: 
// Module Name:    DiscreteCosineTransform 
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
module DiscreteCosineTransform(
// Dfinal=D(data_in)Din
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

output  [15:0] D11_final, D12_final, D13_final, D14_final, D15_final, D16_final, D17_final, D18_final;
output  [15:0] D21_final, D22_final, D23_final, D24_final, D25_final, D26_final, D27_final, D28_final;
output  [15:0] D31_final, D32_final, D33_final, D34_final, D35_final, D36_final, D37_final, D38_final;
output  [15:0] D41_final, D42_final, D43_final, D44_final, D45_final, D46_final, D47_final, D48_final;
output  [15:0] D51_final, D52_final, D53_final, D54_final, D55_final, D56_final, D57_final, D58_final;
output  [15:0] D61_final, D62_final, D63_final, D64_final, D65_final, D66_final, D67_final, D68_final;
output  [15:0] D71_final, D72_final, D73_final, D74_final, D75_final, D76_final, D77_final, D78_final;
output  [15:0] D81_final, D82_final, D83_final, D84_final, D85_final, D86_final, D87_final, D88_final;

//input [15:0] datain;
//input clk;
//reg [2:0] counti3=0;
//reg [7:0] 8_bit_counter;

wire[15:0] tmpD11_final, tmpD12_final, tmpD13_final, tmpD14_final, tmpD15_final, tmpD16_final, tmpD17_final, tmpD18_final;
wire[15:0] tmpD21_final, tmpD22_final, tmpD23_final, tmpD24_final, tmpD25_final, tmpD26_final, tmpD27_final, tmpD28_final;
wire[15:0] tmpD31_final, tmpD32_final, tmpD33_final, tmpD34_final, tmpD35_final, tmpD36_final, tmpD37_final, tmpD38_final;
wire[15:0] tmpD41_final, tmpD42_final, tmpD43_final, tmpD44_final, tmpD45_final, tmpD46_final, tmpD47_final, tmpD48_final;
wire[15:0] tmpD51_final, tmpD52_final, tmpD53_final, tmpD54_final, tmpD55_final, tmpD56_final, tmpD57_final, tmpD58_final;
wire[15:0] tmpD61_final, tmpD62_final, tmpD63_final, tmpD64_final, tmpD65_final, tmpD66_final, tmpD67_final, tmpD68_final;
wire[15:0] tmpD71_final, tmpD72_final, tmpD73_final, tmpD74_final, tmpD75_final, tmpD76_final, tmpD77_final, tmpD78_final;
wire[15:0] tmpD81_final, tmpD82_final, tmpD83_final, tmpD84_final, tmpD85_final, tmpD86_final, tmpD87_final, tmpD88_final;


input[15:0] H00, H01, H02, H03, H04, H05, H06, H07;
input[15:0] H10, H11, H12, H13, H14, H15, H16, H17;
input[15:0] H20, H21, H22, H23, H24, H25, H26, H27;
input[15:0] H30, H31, H32, H33, H34, H35, H36, H37;
input[15:0] H40, H41, H42, H43, H44, H45, H46, H47;
input[15:0] H50, H51, H52, H53, H54, H55, H56, H57;
input[15:0] H60, H61, H62, H63, H64, H65, H66, H67;
input[15:0] H70, H71, H72, H73, H74, H75, H76, H77;



//reg [5:0] bit_counter_6=0;
wire  [15:0] D[7:0][7:0];
wire  [15:0] Din[7:0][7:0];

//counter_3 inst1(3_bit_counteri, clk, reset);
//counter_3 inst2(3_bit_counterj, clk, reset);
//counter_6 inst4(bit_counter_6, clk, 1);

//counter_8 inst3(8_bit_counter, clk, reset);

//DCT Matrix ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
assign D[0][0] = 16'b0000000001011010; assign D[0][1] = 16'b0000000001011010; assign D[0][2] = 16'b0000000001011010; assign D[0][3] = 16'b0000000001011010; assign D[0][4] = 16'b0000000001011010; assign D[0][5] = 16'b0000000001011010; assign D[0][6] = 16'b0000000001011010; assign D[0][7] = 16'b0000000001011010;
assign D[1][0] = 16'b0000000001111101; assign D[1][1] = 16'b0000000001101010; assign D[1][2] = 16'b0000000001000111; assign D[1][3] = 16'b0000000000011000; assign D[1][4] = 16'b1111111111100111; assign D[1][5] = 16'b1111111110111000; assign D[1][6] = 16'b1111111110010101; assign D[1][7] = 16'b1111111110000010;
assign D[2][0] = 16'b0000000001110110; assign D[2][1] = 16'b0000000000110000; assign D[2][2] = 16'b1111111111001111; assign D[2][3] = 16'b1111111110001001; assign D[2][4] = 16'b1111111110001001; assign D[2][5] = 16'b1111111111001111; assign D[2][6] = 16'b0000000000110000; assign D[2][7] = 16'b0000000001110110;
assign D[3][0] = 16'b0000000001101010; assign D[3][1] = 16'b1111111111100111; assign D[3][2] = 16'b1111111110000010; assign D[3][3] = 16'b1111111110111000; assign D[3][4] = 16'b0000000001000111; assign D[3][5] = 16'b0000000001111101; assign D[3][6] = 16'b0000000000011000; assign D[3][7] = 16'b0000000001101010;
assign D[4][0] = 16'b0000000001011010; assign D[4][1] = 16'b1111111110100101; assign D[4][2] = 16'b1111111110100101; assign D[4][3] = 16'b0000000001011010; assign D[4][4] = 16'b0000000001011010; assign D[4][5] = 16'b1111111110100101; assign D[4][6] = 16'b1111111110100101; assign D[4][7] = 16'b0000000001011010;
assign D[5][0] = 16'b0000000001000111; assign D[5][1] = 16'b1111111110000010; assign D[5][2] = 16'b0000000000011000; assign D[5][3] = 16'b0000000001101010; assign D[5][4] = 16'b1111111110010101; assign D[5][5] = 16'b1111111111100111; assign D[5][6] = 16'b0000000001111101; assign D[5][7] = 16'b1111111110111000;
assign D[6][0] = 16'b0000000000110000; assign D[6][1] = 16'b1111111110001001; assign D[6][2] = 16'b0000000001110110; assign D[6][3] = 16'b1111111111001111; assign D[6][4] = 16'b1111111111001111; assign D[6][5] = 16'b0000000001110110; assign D[6][6] = 16'b1111111110001001; assign D[6][7] = 16'b0000000000110000;
assign D[7][0] = 16'b0000000000011000; assign D[7][1] = 16'b1111111110111000; assign D[7][2] = 16'b0000000001101010; assign D[7][3] = 16'b1111101100011000; assign D[7][4] = 16'b0000000001111101; assign D[7][5] = 16'b1111111110010101; assign D[7][6] = 16'b0000000001000111; assign D[7][7] = 16'b1111111111100111;

//DCT Transpose Matrix //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

assign Din[0][0] = 16'b0000000001011010;
assign Din[1][0] = 16'b0000000001011010;
assign Din[2][0] = 16'b0000000001011010;
assign Din[3][0] = 16'b0000000001011010;
assign Din[4][0] = 16'b0000000001011010;
assign Din[5][0] = 16'b0000000001011010;
assign Din[6][0] = 16'b0000000001011010;
assign Din[7][0] = 16'b0000000001011010;

assign Din[0][1] = 16'b0000000001111101;
assign Din[1][1] = 16'b0000000001101010;
assign Din[2][1] = 16'b0000000001000111;
assign Din[3][1] = 16'b0000000000011000;
assign Din[4][1] = 16'b1111111111100111;
assign Din[5][1] = 16'b1111111110111000;
assign Din[6][1] = 16'b1111111110010101;
assign Din[7][1] = 16'b1111111110000010;

assign Din[0][2] = 16'b0000000001110110;
assign Din[1][2] = 16'b0000000000110000;
assign Din[2][2] = 16'b1111111111001111;
assign Din[3][2] = 16'b1111111110001001;
assign Din[4][2] = 16'b1111111110001001;
assign Din[5][2] = 16'b1111111111001111;
assign Din[6][2] = 16'b0000000000110000;
assign Din[7][2] = 16'b0000000001110110;

assign Din[0][3] = 16'b0000000001101010;
assign Din[1][3] = 16'b1111111111100111;
assign Din[2][3] = 16'b1111111110000010;
assign Din[3][3] = 16'b1111111110111000;
assign Din[4][3] = 16'b0000000001000111;
assign Din[5][3] = 16'b0000000001111101;
assign Din[6][3] = 16'b0000000000011000;
assign Din[7][3] = 16'b0000000001101010;
	
assign Din[0][4] = 16'b0000000001011010;
assign Din[1][4] = 16'b1111111110100101;
assign Din[2][4] = 16'b1111111110100101;
assign Din[3][4] = 16'b0000000001011010;
assign Din[4][4] = 16'b0000000001011010;
assign Din[5][4] = 16'b1111111110100101;
assign Din[6][4] = 16'b1111111110100101;
assign Din[7][4] = 16'b0000000001011010;

assign Din[0][5] = 16'b0000000001000111;
assign Din[1][5] = 16'b1111111110000010;
assign Din[2][5] = 16'b0000000000011000;
assign Din[3][5] = 16'b0000000001101010;
assign Din[4][5] = 16'b1111111110010101;
assign Din[5][5] = 16'b1111111111100111;
assign Din[6][5] = 16'b0000000001111101;
assign Din[7][5] = 16'b1111111110111000;

assign Din[0][6] = 16'b0000000000110000;
assign Din[1][6] = 16'b1111111110001001;
assign Din[2][6] = 16'b0000000001110110;
assign Din[3][6] = 16'b1111111111001111;
assign Din[4][6] = 16'b1111111111001111;
assign Din[5][6] = 16'b0000000001110110;
assign Din[6][6] = 16'b1111111110001001;
assign Din[7][6] = 16'b0000000000110000;

assign Din[0][7] = 16'b0000000000011000;
assign Din[1][7] = 16'b1111111110111000;
assign Din[2][7] = 16'b0000000001101010;
assign Din[3][7] = 16'b1111101100011000;
assign Din[4][7] = 16'b0000000001111101;
assign Din[5][7] = 16'b1111111110010101;
assign Din[6][7] = 16'b0000000001000111;
assign Din[7][7] = 16'b1111111111100111;




/*always@(posedge clk)
begin
 if(bit_counter_6 < 64)
 begin
	
	tmp[bit_counter_6] = datain;
	bit_counter_6 = bit_counter_6 + 1;
 end
end*/


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//8x8 image block
/*assign H[0][0] = tmp[0] ; assign H[0][1] = tmp[1] ; assign H[0][2] = tmp[2] ; assign H[0][3] = tmp[3] ; assign H[0][4] = tmp[4] ; assign H[0][5] = tmp[5] ; assign H[0][6] = tmp[6] ; assign H[0][7] = tmp[7] ;
assign H[1][0] = tmp[8] ; assign H[1][1] = tmp[9] ; assign H[1][2] = tmp[10] ; assign H[1][3] = tmp[11] ; assign H[1][4] = tmp[12] ; assign H[1][5] = tmp[13] ; assign H[1][6] = tmp[14] ; assign H[1][7] = tmp[15] ;
assign H[2][0] = tmp[16] ; assign H[2][1] = tmp[17] ; assign H[2][2] = tmp[18] ; assign H[2][3] = tmp[19] ; assign H[2][4] = tmp[20] ; assign H[2][5] = tmp[21] ; assign H[2][6] = tmp[22] ; assign H[2][7] = tmp[23] ;
assign H[3][0] = tmp[24] ; assign H[3][1] = tmp[25] ; assign H[3][2] = tmp[26] ; assign H[3][3] = tmp[27] ; assign H[3][4] = tmp[28] ; assign H[3][5] = tmp[29] ; assign H[3][6] = tmp[30] ; assign H[3][7] = tmp[31] ;
assign H[4][0] = tmp[32] ; assign H[4][1] = tmp[33] ; assign H[4][2] = tmp[34] ; assign H[4][3] = tmp[35] ; assign H[4][4] = tmp[36] ; assign H[4][5] = tmp[37] ; assign H[4][6] = tmp[38] ; assign H[4][7] = tmp[39] ;
assign H[5][0] = tmp[40] ; assign H[5][1] = tmp[41] ; assign H[5][2] = tmp[42] ; assign H[5][3] = tmp[43] ; assign H[5][4] = tmp[44] ; assign H[5][5] = tmp[45] ; assign H[5][6] = tmp[46] ; assign H[5][7] = tmp[47] ;
assign H[6][0] = tmp[48] ; assign H[6][1] = tmp[49] ; assign H[6][2] = tmp[50] ; assign H[6][3] = tmp[51] ; assign H[6][4] = tmp[52] ; assign H[6][5] = tmp[53] ; assign H[6][6] = tmp[54] ; assign H[6][7] = tmp[55] ;
assign H[7][0] = tmp[56] ; assign H[7][1] = tmp[57] ; assign H[7][2] = tmp[58] ; assign H[7][3] = tmp[59] ; assign H[7][4] = tmp[60] ; assign H[7][5] = tmp[61] ; assign H[7][6] = tmp[62] ; assign H[7][7] = tmp[63] ;
*/
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


Multiplier_8x8 mul1(
tmpD11_final, tmpD12_final, tmpD13_final, tmpD14_final, tmpD15_final, tmpD16_final, tmpD17_final, tmpD18_final,
tmpD21_final, tmpD22_final, tmpD23_final, tmpD24_final, tmpD25_final, tmpD26_final, tmpD27_final, tmpD28_final,
tmpD31_final, tmpD32_final, tmpD33_final, tmpD34_final, tmpD35_final, tmpD36_final, tmpD37_final, tmpD38_final,
tmpD41_final, tmpD42_final, tmpD43_final, tmpD44_final, tmpD45_final, tmpD46_final, tmpD47_final, tmpD48_final,
tmpD51_final, tmpD52_final, tmpD53_final, tmpD54_final, tmpD55_final, tmpD56_final, tmpD57_final, tmpD58_final,
tmpD61_final, tmpD62_final, tmpD63_final, tmpD64_final, tmpD65_final, tmpD66_final, tmpD67_final, tmpD68_final,
tmpD71_final, tmpD72_final, tmpD73_final, tmpD74_final, tmpD75_final, tmpD76_final, tmpD77_final, tmpD78_final,
tmpD81_final, tmpD82_final, tmpD83_final, tmpD84_final, tmpD85_final, tmpD86_final, tmpD87_final, tmpD88_final,

D[0][0], D[0][1], D[0][2], D[0][3], D[0][4], D[0][5], D[0][6], D[0][7],
D[1][0], D[1][1], D[1][2], D[1][3], D[1][4], D[1][5], D[1][6], D[1][7],
D[2][0], D[2][1], D[2][2], D[2][3], D[2][4], D[2][5], D[2][6], D[2][7],
D[3][0], D[3][1], D[3][2], D[3][3], D[3][4], D[3][5], D[3][6], D[3][7],
D[4][0], D[4][1], D[4][2], D[4][3], D[4][4], D[4][5], D[4][6], D[4][7],
D[5][0], D[5][1], D[5][2], D[5][3], D[5][4], D[5][5], D[5][6], D[5][7],
D[6][0], D[6][1], D[6][2], D[6][3], D[6][4], D[6][5], D[6][6], D[6][7],
D[7][0], D[7][1], D[7][2], D[7][3], D[7][4], D[7][5], D[7][6], D[7][7],

H00, H01, H02, H03, H04, H05, H06, H07,
H10, H11, H12, H13, H14, H15, H16, H17,
H20, H21, H22, H23, H24, H25, H26, H27,
H30, H31, H32, H33, H34, H35, H36, H37,
H40, H41, H42, H43, H44, H45, H46, H47,
H50, H51, H52, H53, H54, H55, H56, H57,
H60, H61, H62, H63, H64, H65, H66, H67,
H70, H71, H72, H73, H74, H75, H76, H77
);

Multiplier_8x8 mul2(
D11_final, D12_final, D13_final, D14_final, D15_final, D16_final, D17_final, D18_final,
D21_final, D22_final, D23_final, D24_final, D25_final, D26_final, D27_final, D28_final,
D31_final, D32_final, D33_final, D34_final, D35_final, D36_final, D37_final, D38_final,
D41_final, D42_final, D43_final, D44_final, D45_final, D46_final, D47_final, D48_final,
D51_final, D52_final, D53_final, D54_final, D55_final, D56_final, D57_final, D58_final,
D61_final, D62_final, D63_final, D64_final, D65_final, D66_final, D67_final, D68_final,
D71_final, D72_final, D73_final, D74_final, D75_final, D76_final, D77_final, D78_final,
D81_final, D82_final, D83_final, D84_final, D85_final, D86_final, D87_final, D88_final,

tmpD11_final, tmpD12_final, tmpD13_final, tmpD14_final, tmpD15_final, tmpD16_final, tmpD17_final, tmpD18_final,
tmpD21_final, tmpD22_final, tmpD23_final, tmpD24_final, tmpD25_final, tmpD26_final, tmpD27_final, tmpD28_final,
tmpD31_final, tmpD32_final, tmpD33_final, tmpD34_final, tmpD35_final, tmpD36_final, tmpD37_final, tmpD38_final,
tmpD41_final, tmpD42_final, tmpD43_final, tmpD44_final, tmpD45_final, tmpD46_final, tmpD47_final, tmpD48_final,
tmpD51_final, tmpD52_final, tmpD53_final, tmpD54_final, tmpD55_final, tmpD56_final, tmpD57_final, tmpD58_final,
tmpD61_final, tmpD62_final, tmpD63_final, tmpD64_final, tmpD65_final, tmpD66_final, tmpD67_final, tmpD68_final,
tmpD71_final, tmpD72_final, tmpD73_final, tmpD74_final, tmpD75_final, tmpD76_final, tmpD77_final, tmpD78_final,
tmpD81_final, tmpD82_final, tmpD83_final, tmpD84_final, tmpD85_final, tmpD86_final, tmpD87_final, tmpD88_final,

Din[0][0], Din[0][1], Din[0][2], Din[0][3], Din[0][4], Din[0][5], Din[0][6], Din[0][7],
Din[1][0], Din[1][1], Din[1][2], Din[1][3], Din[1][4], Din[1][5], Din[1][6], Din[1][7],
Din[2][0], Din[2][1], Din[2][2], Din[2][3], Din[2][4], Din[2][5], Din[2][6], Din[2][7],
Din[3][0], Din[3][1], Din[3][2], Din[3][3], Din[3][4], Din[3][5], Din[3][6], Din[3][7],
Din[4][0], Din[4][1], Din[4][2], Din[4][3], Din[4][4], Din[4][5], Din[4][6], Din[4][7],
Din[5][0], Din[5][1], Din[5][2], Din[5][3], Din[5][4], Din[5][5], Din[5][6], Din[5][7],
Din[6][0], Din[6][1], Din[6][2], Din[6][3], Din[6][4], Din[6][5], Din[6][6], Din[6][7],
Din[7][0], Din[7][1], Din[7][2], Din[7][3], Din[7][4], Din[7][5], Din[7][6], Din[7][7]
);

















endmodule
