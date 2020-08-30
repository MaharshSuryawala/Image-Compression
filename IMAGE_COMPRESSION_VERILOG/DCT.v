`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:45:52 10/30/2017 
// Design Name: 
// Module Name:    DCT 
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
module DCT(
    input clk
	 );

   reg [15:0] DIMG [65536:0];
	wire [31:0] DIMGtmp0, DIMGtmp1, DIMGtmp2, DIMGtmp3, DIMGtmp4, DIMGtmp5, DIMGtmp6, DIMGtmp7;
	wire [3:0] counter;
	wire [15:0] IMG_add_a;
	wire validtmp;
	reg valid = 0, transpose_valid = 1'b0;
	reg [7:0] counteri = 0, counterj = 0;//, qq <= 0;
	//reg [32:0] i=0;
	reg [15:0] swaptmp;//, mm1,mm2;
	
	
	//debugging
//	reg [15:0] a1,a0,a2,a3,a4,a5,a6,a7;
	//reg [15:0] aaa;
	
	Matrix_Multiplier1_8X8 DIMG1(DIMGtmp0, DIMGtmp1, DIMGtmp2, DIMGtmp3, DIMGtmp4, DIMGtmp5, DIMGtmp6, DIMGtmp7, counter, IMG_add_a, clk);
	
	//Debuging part
	/*assign a = IMG_add_a - 16;
	assign a0 = DIMG[IMG_add_a - 16];
	assign a1 = DIMG[IMG_add_a - 15];
	assign a2 = DIMG[IMG_add_a - 14];
	assign a3 = DIMG[IMG_add_a - 13];
	assign a4 = DIMG[IMG_add_a - 12];
	assign a5 = DIMG[IMG_add_a - 11];
	assign a6 = DIMG[IMG_add_a - 10];
	assign a7 = DIMG[IMG_add_a - 9];
	*/
	
	assign validtmp = (IMG_add_a == 16'hfffe) ? 1'b1 : 1'b0;
	//assign valid = (validtmp) ? 1'b1 : (IMG_add_a == 16'h0000) ? 1'b0 : (1'b0 | valid);
	//assign a = (counteri * 256) + counterj;
	
	always@(posedge clk)
	begin
		if(!(validtmp || valid))
		begin
		//s	qq = 7;
			if(counter == 4)
			begin
				DIMG[IMG_add_a - 16] <= DIMGtmp0[23:8];
				DIMG[IMG_add_a - 15] <= DIMGtmp1[23:8];
				DIMG[IMG_add_a - 14] <= DIMGtmp2[23:8];
				DIMG[IMG_add_a - 13] <= DIMGtmp3[23:8];
				DIMG[IMG_add_a - 12] <= DIMGtmp4[23:8];
				DIMG[IMG_add_a - 11] <= DIMGtmp5[23:8];
				DIMG[IMG_add_a - 10] <= DIMGtmp6[23:8];
				DIMG[IMG_add_a - 9] <= DIMGtmp7[23:8];

			end
		end
		if((validtmp || valid) && !transpose_valid)
		begin
//		 $display($time, "\tEntered in validtmp if loop\n");
		//	qq <= 9;
			valid <= 1;
			
			
			if(counteri < 256)
			begin
				if(counterj < 256)
				begin
					swaptmp <= DIMG[(counteri * 256) + counterj];
					DIMG[(counteri * 256) + counterj] <= DIMG[(counterj * 256) + counteri];
					DIMG[(counterj * 256) + counteri] <= swaptmp;
//					mm1 <= DIMG[(counteri * 256) + counterj];
	//				mm2 <= DIMG[(counterj * 256) + counteri];
					if(counterj == 255)
					begin
						counteri <= counteri + 1;
						counterj <= counteri + 1;
			//qq <= counteri + 1;
					end
				end
				if(counterj != 255)
				counterj <= counterj + 1;
			end
	end
		
		if(transpose_valid == 1'b1 || counteri == 255)
			transpose_valid <= 1'b1;
	//	if (counteri == 255 || qq == 11)
		//	qq<=11;
		/*if(qq == 11)
		begin
			aaa <= DIMG[i];
			i <= i+1;
		
		end*/



//		if(counterj == 255)
/*		if(counter == 0)
		begin
					//	a0 <= DIMGtmp0[23:8];
				//a1 <= IMG_add_a - 8;
				a <= IMG_add_a - 8;
				a0 <= DIMG [IMG_add_a - 8];
				a1 <= DIMG [IMG_add_a - 7];
				a2 <= DIMG [IMG_add_a - 6];
				a3 = DIMG [IMG_add_a - 5];
				a4 = DIMG [IMG_add_a - 4];
				a5 = DIMG [IMG_add_a - 3];
				a6 = DIMG [IMG_add_a - 2];
				a7 = DIMG [IMG_add_a - 1];

		end*/


	end
endmodule
