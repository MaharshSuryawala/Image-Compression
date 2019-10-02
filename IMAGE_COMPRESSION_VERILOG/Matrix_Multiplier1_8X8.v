`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:47:07 10/30/2017 
// Design Name: 
// Module Name:    Matrix_Multiplier1_8X8 
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
module Matrix_Multiplier1_8X8(
    //input [15:0] IMG_add_a,
	 //input [15:0] IMG_add_b,
	// input [5:0] D_add_a,
	// input [5:0] D_add_b,
	 //input [3:0] counter,
	 output reg [31:0] DIMGtmp0,
	 output reg [31:0] DIMGtmp1,
	 output reg [31:0] DIMGtmp2,
	 output reg [31:0] DIMGtmp3,
	 output reg [31:0] DIMGtmp4,
	 output reg [31:0] DIMGtmp5,
	 output reg [31:0] DIMGtmp6,
	 output reg [31:0] DIMGtmp7,
	 output [3:0] counter,
	 output [15:0] IMG_add_a,
	 input clk
	 );
	 
	wire [15:0]  IMG_add_b;
	reg [15:0] tmp[7:0];
	//wire [7:0] Douta, Doutb;
	wire [7:0] IMGouta, IMGoutb;
	wire [16:0] D[7:0][7:0];
	reg[15:0]  countertmp1 = 0, counter1 = 0, counter2 = 1;

//	wire [31:0] t1;
//	assign t1 = (D[0][1] * tmp[0]) + (D[1][1] * tmp[1]) + (D[2][1] * tmp[2]) + (D[3][1] * tmp[3]) + (D[4][1] * tmp[4])
//	+ (D[5][1] * tmp[5]) + (D[6][1] * tmp[6]) + (D[7][1] * tmp[7]);
	
	assign IMG_add_a = counter1;
	assign IMG_add_b = counter2;
	assign counter = countertmp1;
	
	assign D[0][0] = 16'b0000000001011010;
	assign D[0][1] = 16'b0000000001011010;
	assign D[0][2] = 16'b0000000001011010;
	assign D[0][3] = 16'b0000000001011010;
	assign D[0][4] = 16'b0000000001011010;
	assign D[0][5] = 16'b0000000001011010;
	assign D[0][7] = 16'b0000000001011010;
	assign D[0][6] = 16'b0000000001011010;

	assign D[1][0] = 16'b0000000001111101;
	assign D[1][1] = 16'b0000000001101010;
	assign D[1][2] = 16'b0000000001000111;
	assign D[1][3] = 16'b0000000000011000;
	assign D[1][4] = 16'b1111111111100111;
	assign D[1][5] = 16'b1111111110111000;
	assign D[1][7] = 16'b1111111110000010;
	assign D[1][6] = 16'b1111111110010101;

	assign D[2][0] = 16'b0000000001110110;
	assign D[2][1] = 16'b0000000000110000;
	assign D[2][2] = 16'b1111111111001111;
	assign D[2][3] = 16'b1111111110001001;
	assign D[2][4] = 16'b1111111110001001;
	assign D[2][5] = 16'b1111111111001111;
	assign D[2][7] = 16'b0000000001110110;
	assign D[2][6] = 16'b0000000000110000;

	assign D[3][0] = 16'b0000000001101010;
	assign D[3][1] = 16'b1111111111100111;
	assign D[3][2] = 16'b1111111110000010;
	assign D[3][3] = 16'b1111111110111000;
	assign D[3][4] = 16'b0000000001000111;
	assign D[3][5] = 16'b0000000001111101;
	assign D[3][7] = 16'b0000000001101010;
	assign D[3][6] = 16'b0000000000011000;

	
	assign D[4][0] = 16'b0000000001011010;
	assign D[4][1] = 16'b1111111110100101;
	assign D[4][2] = 16'b1111111110100101;
	assign D[4][3] = 16'b0000000001011010;
	assign D[4][4] = 16'b0000000001011010;
	assign D[4][5] = 16'b1111111110100101;
	assign D[4][6] = 16'b1111111110100101;
	assign D[4][7] = 16'b0000000001011010;

	assign D[5][0] = 16'b0000000001000111;
	assign D[5][1] = 16'b1111111110000010;
	assign D[5][2] = 16'b0000000000011000;
	assign D[5][3] = 16'b0000000001101010;
	assign D[5][4] = 16'b1111111110010101;
	assign D[5][5] = 16'b1111111111100111;
	assign D[5][6] = 16'b0000000001111101;
	assign D[5][7] = 16'b1111111110111000;

	assign D[6][0] = 16'b0000000000110000;
	assign D[6][1] = 16'b1111111110001001;
	assign D[6][2] = 16'b0000000001110110;
	assign D[6][3] = 16'b1111111111001111;
	assign D[6][4] = 16'b1111111111001111;
	assign D[6][5] = 16'b0000000001110110;
	assign D[6][6] = 16'b1111111110001001;
	assign D[6][7] = 16'b0000000000110000;

	assign D[7][0] = 16'b0000000000011000;
	assign D[7][1] = 16'b1111111110111000;
	assign D[7][2] = 16'b0000000001101010;
	assign D[7][3] = 16'b1111101100011000;
	assign D[7][4] = 16'b0000000001111101;
	assign D[7][5] = 16'b1111111110010101;
	assign D[7][6] = 16'b0000000001000111;
	assign D[7][7] = 16'b1111111111100111;


	IMG_ROM IMG (
	  .clka(clk), // input clka
	  .addra(IMG_add_a), // input [15 : 0] addra
	  .douta(IMGouta), // output [7 : 0] douta
	  .clkb(clk), // input clkb
	  .addrb(IMG_add_b), // input [15 : 0] addrb
	  .doutb(IMGoutb) // output [7 : 0] doutb
	);	
	
	assign a = (counter<<1);
/*
	D_ROM D (
	  .clka(clk), // input clka
	  .addra(D_add_a), // input [5 : 0] addra
	  .douta(Douta), // output [15 : 0] douta
	  .clkb(clk), // input clkb
	  .addrb(D_add_b), // input [5 : 0] addrb
	  .doutb(Doutb) // output [15 : 0] doutb
	);*/
	

//	assign D_add_a = counter3;
//	assign D_add_b = counter4;
	
	always@(posedge clk)
	begin
			if((counter<<1) - 2 >= 0)
			begin
				tmp[(counter<<1) - 2] = {IMGouta, 8'b0000_0000};
				tmp[(counter<<1) - 1] = {IMGoutb, 8'h00};
			end
			if(counter == 4)
			begin
				DIMGtmp0 = (tmp[0] * D[0][0]) + (tmp[1] * D[1][0]) + (tmp[2] * D[2][0]) + (tmp[3] * D[3][0])
							+ (tmp[4] * D[4][0]) + (tmp[5] * D[5][0]) + (tmp[6] * D[6][0]) + (tmp[7] * D[7][0]);
				DIMGtmp1 = (tmp[0] * D[0][1]) + (tmp[1] * D[1][1]) + (tmp[2] * D[2][1]) + (tmp[3] * D[3][1])
							+ (tmp[4] * D[4][1]) + (tmp[5] * D[5][1]) + (tmp[6] * D[6][1]) + (tmp[7] * D[7][1]);
				DIMGtmp2 = (tmp[0] * D[0][2]) + (tmp[1] * D[1][2]) + (tmp[2] * D[2][2]) + (tmp[3] * D[3][2])
							+ (tmp[4] * D[4][2]) + (tmp[5] * D[5][2]) + (tmp[6] * D[6][2]) + (tmp[7] * D[7][2]);
				DIMGtmp3 = (tmp[0] * D[0][3]) + (tmp[1] * D[1][3]) + (tmp[2] * D[2][3]) + (tmp[3] * D[3][3])
							+ (tmp[4] * D[4][3]) + (tmp[5] * D[5][3]) + (tmp[6] * D[6][3]) + (tmp[7] * D[7][3]);
				DIMGtmp4 = (tmp[0] * D[0][4]) + (tmp[1] * D[1][4]) + (tmp[2] * D[2][4]) + (tmp[3] * D[3][4])
							+ (tmp[4] * D[4][4]) + (tmp[5] * D[5][4]) + (tmp[6] * D[6][4]) + (tmp[7] * D[7][4]);
				DIMGtmp5 = (tmp[0] * D[0][5]) + (tmp[1] * D[1][5]) + (tmp[2] * D[2][5]) + (tmp[3] * D[3][5])
							+ (tmp[4] * D[4][5]) + (tmp[5] * D[5][5]) + (tmp[6] * D[6][5]) + (tmp[7] * D[7][5]);
				DIMGtmp6 = (tmp[0] * D[0][6]) + (tmp[1] * D[1][6]) + (tmp[2] * D[2][6]) + (tmp[3] * D[3][6])
							+ (tmp[4] * D[4][6]) + (tmp[5] * D[5][6]) + (tmp[6] * D[6][6]) + (tmp[7] * D[7][6]);
				DIMGtmp7 = (tmp[0] * D[0][7]) + (tmp[1] * D[1][7]) + (tmp[2] * D[2][7]) + (tmp[3] * D[3][7])
							+ (tmp[4] * D[4][7]) + (tmp[5] * D[5][7]) + (tmp[6] * D[6][7]) + (tmp[7] * D[7][7]);

	//			DIMG[IMG_add_a - 6] = DIMGtmp0[23:8];
	//			DIMG[IMG_add_b - 6] = DIMGtmp1[23:8];
	//			DIMG[IMG_add_a - 4] = DIMGtmp2[23:8];
	//			DIMG[IMG_add_b - 4] = DIMGtmp3[23:8];
	//			DIMG[IMG_add_a - 2] = DIMGtmp4[23:8];
	//			DIMG[IMG_add_b - 2] = DIMGtmp5[23:8];
	//			DIMG[IMG_add_a] = DIMGtmp6[23:8];
	//			DIMG[IMG_add_b] = DIMGtmp7[23:8];
			end

			if(countertmp1 < 4)
			begin
				
				counter1 <= counter1 + 2;
				counter2 <= counter2 + 2;
				countertmp1 <= countertmp1 + 1;
			end
			
			if(countertmp1 == 4)
			begin
				
				countertmp1 <= 0;
			end
//		end
	
	end

//	always@(posedge clk)
	//begin	
//	if(~hold)
//		begin
//	end
endmodule

/*module CounterMUl1(
	input clk
	);
	reg[15:0]  countertmp1 = 0, countertmp2 = 0, counter1, counter2;
	Matrix_Multiplier1_8X8(counter1, counter2, countertmp1, clk);
	
	always@(posedge clk)
	begin	
//	if(~hold)
//		begin
			if(countertmp1 < 4)
			begin
				counter1 <= counter1 + 2;
				counter2 <= counter2 + 2;
				countertmp1 <= countertmp1 + 1;
			end
			
			if(countertmp1 == 4)
			begin
				countertmp1 <= 0;
			end
//		end
	end
endmodule
*/





/*
module Matrix_Multiplier1_8X8(
    input [15:0] IMG_add_a,
	 input [15:0] IMG_add_b,
	// input [5:0] D_add_a,
	// input [5:0] D_add_b,
	 input [3:0] counter,
	 input clk
	 );

	reg [16:0] tmp[7:0];
	//wire [7:0] Douta, Doutb;
	wire [8:0] IMGouta, IMGoutb;
	reg [15:0] DIMG[65536:0];
	wire [16:0] D[7:0][7:0];
	reg [32:0] DIMGtmp0, DIMGtmp1, DIMGtmp2, DIMGtmp3, DIMGtmp4, DIMGtmp5, DIMGtmp6, DIMGtmp7;
	
	
	assign D[0][0] = 16'b0000000001011010;
	assign D[0][1] = 16'b0000000001011010;
	assign D[0][2] = 16'b0000000001011010;
	assign D[0][3] = 16'b0000000001011010;
	assign D[0][4] = 16'b0000000001011010;
	assign D[0][5] = 16'b0000000001011010;
	assign D[0][7] = 16'b0000000001011010;
	assign D[0][6] = 16'b0000000001011010;

	assign D[1][0] = 16'b0000000001111101;
	assign D[1][1] = 16'b0000000001101010;
	assign D[1][2] = 16'b0000000001000111;
	assign D[1][3] = 16'b0000000000011000;
	assign D[1][4] = 16'b1111111111100111;
	assign D[1][5] = 16'b1111111110111000;
	assign D[1][7] = 16'b1111111110000010;
	assign D[1][6] = 16'b1111111110010101;

	assign D[2][0] = 16'b0000000001110110;
	assign D[2][1] = 16'b0000000000110000;
	assign D[2][2] = 16'b1111111111001111;
	assign D[2][3] = 16'b1111111110001001;
	assign D[2][4] = 16'b1111111110001001;
	assign D[2][5] = 16'b1111111111001111;
	assign D[2][7] = 16'b0000000001110110;
	assign D[2][6] = 16'b0000000000110000;

	assign D[3][0] = 16'b0000000001101010;
	assign D[3][1] = 16'b1111111111100111;
	assign D[3][2] = 16'b1111111110000010;
	assign D[3][3] = 16'b1111111110111000;
	assign D[3][4] = 16'b0000000001000111;
	assign D[3][5] = 16'b0000000001111101;
	assign D[3][7] = 16'b0000000001101010;
	assign D[3][6] = 16'b0000000000011000;

	
	assign D[4][0] = 16'b0000000001011010;
	assign D[4][1] = 16'b1111111110100101;
	assign D[4][2] = 16'b1111111110100101;
	assign D[4][3] = 16'b0000000001011010;
	assign D[4][4] = 16'b0000000001011010;
	assign D[4][5] = 16'b1111111110100101;
	assign D[4][6] = 16'b1111111110100101;
	assign D[4][7] = 16'b0000000001011010;

	assign D[5][0] = 16'b0000000001000111;
	assign D[5][1] = 16'b1111111110000010;
	assign D[5][2] = 16'b0000000000011000;
	assign D[5][3] = 16'b0000000001101010;
	assign D[5][4] = 16'b1111111110010101;
	assign D[5][5] = 16'b1111111111100111;
	assign D[5][6] = 16'b0000000001111101;
	assign D[5][7] = 16'b1111111110111000;

	assign D[6][0] = 16'b0000000000110000;
	assign D[6][1] = 16'b1111111110001001;
	assign D[6][2] = 16'b0000000001110110;
	assign D[6][3] = 16'b1111111111001111;
	assign D[6][4] = 16'b1111111111001111;
	assign D[6][5] = 16'b0000000001110110;
	assign D[6][6] = 16'b1111111110001001;
	assign D[6][7] = 16'b0000000000110000;

	assign D[7][0] = 16'b0000000000011000;
	assign D[7][1] = 16'b1111111110111000;
	assign D[7][2] = 16'b0000000001101010;
	assign D[7][3] = 16'b1111101100011000;
	assign D[7][4] = 16'b0000000001111101;
	assign D[7][5] = 16'b1111111110010101;
	assign D[7][6] = 16'b0000000001000111;
	assign D[7][7] = 16'b1111111111100111;


	IMG_ROM IMG (
	  .clka(clk), // input clka
	  .addra(IMG_add_a), // input [15 : 0] addra
	  .douta(IMGouta), // output [7 : 0] douta
	  .clkb(clk), // input clkb
	  .addrb(IMG_add_b), // input [15 : 0] addrb
	  .doutb(IMGoutb) // output [7 : 0] doutb
	);	
	


//	D_ROM D (
//	  .clka(clk), // input clka
//	  .addra(D_add_a), // input [5 : 0] addra
//	  .douta(Douta), // output [15 : 0] douta
//	  .clkb(clk), // input clkb
//	  .addrb(D_add_b), // input [5 : 0] addrb
//	  .doutb(Doutb) // output [15 : 0] doutb
//	);
	

//	assign D_add_a = counter3;
//	assign D_add_b = counter4;
	
	always@(posedge clk)
	begin
			if(counter < 4)
			begin
				tmp[(counter<<1)] = {IMGouta, 8'b0000_0000};
				tmp[(counter<<1) + 1] = {IMGoutb, 8'h00};
			end
			if(counter < 4 && counter == 3)
			begin
				DIMGtmp0 = (tmp[0] * D[0][0]) + (tmp[1] * D[1][0]) + (tmp[2] * D[2][0]) + (tmp[3] * D[3][0])
							+ (tmp[4] * D[4][0]) + (tmp[5] * D[5][0]) + (tmp[6] * D[6][0]) + (tmp[7] * D[7][0]);
				DIMGtmp1 = (tmp[0] * D[0][1]) + (tmp[1] * D[1][1]) + (tmp[2] * D[2][1]) + (tmp[3] * D[3][1])
							+ (tmp[4] * D[4][1]) + (tmp[5] * D[5][1]) + (tmp[6] * D[6][1]) + (tmp[7] * D[7][1]);
				DIMGtmp2 = (tmp[0] * D[0][2]) + (tmp[1] * D[1][2]) + (tmp[2] * D[2][2]) + (tmp[3] * D[3][2])
							+ (tmp[4] * D[4][2]) + (tmp[5] * D[5][2]) + (tmp[6] * D[6][2]) + (tmp[7] * D[7][2]);
				DIMGtmp3 = (tmp[0] * D[0][3]) + (tmp[1] * D[1][3]) + (tmp[2] * D[2][3]) + (tmp[3] * D[3][3])
							+ (tmp[4] * D[4][3]) + (tmp[5] * D[5][3]) + (tmp[6] * D[6][3]) + (tmp[7] * D[7][3]);
				DIMGtmp4 = (tmp[0] * D[0][4]) + (tmp[1] * D[1][4]) + (tmp[2] * D[2][4]) + (tmp[3] * D[3][4])
							+ (tmp[4] * D[4][4]) + (tmp[5] * D[5][4]) + (tmp[6] * D[6][4]) + (tmp[7] * D[7][4]);
				DIMGtmp5 = (tmp[0] * D[0][5]) + (tmp[1] * D[1][5]) + (tmp[2] * D[2][5]) + (tmp[3] * D[3][5])
							+ (tmp[4] * D[4][5]) + (tmp[5] * D[5][5]) + (tmp[6] * D[6][5]) + (tmp[7] * D[7][5]);
				DIMGtmp6 = (tmp[0] * D[0][6]) + (tmp[1] * D[1][6]) + (tmp[2] * D[2][6]) + (tmp[3] * D[3][6])
							+ (tmp[4] * D[4][6]) + (tmp[5] * D[5][6]) + (tmp[6] * D[6][6]) + (tmp[7] * D[7][6]);
				DIMGtmp7 = (tmp[0] * D[0][7]) + (tmp[1] * D[1][7]) + (tmp[2] * D[2][7]) + (tmp[3] * D[3][7])
							+ (tmp[4] * D[4][7]) + (tmp[5] * D[5][7]) + (tmp[6] * D[6][7]) + (tmp[7] * D[7][7]);

				DIMG[IMG_add_a - 6] = DIMGtmp0[23:8];
				DIMG[IMG_add_a - 6] = DIMGtmp1[23:8];
				DIMG[IMG_add_a - 4] = DIMGtmp2[23:8];
				DIMG[IMG_add_a - 4] = DIMGtmp3[23:8];
				DIMG[IMG_add_a - 2] = DIMGtmp4[23:8];
				DIMG[IMG_add_a - 2] = DIMGtmp5[23:8];
				DIMG[IMG_add_a] = DIMGtmp6[23:8];
				DIMG[IMG_add_b] = DIMGtmp7[23:8];
			end
	end
	
endmodule
*/