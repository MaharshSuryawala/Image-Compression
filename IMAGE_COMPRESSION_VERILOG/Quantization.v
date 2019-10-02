`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:29:01 11/05/2017 
// Design Name: 
// Module Name:    Qmuantization 
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
module Quantization(
Q00, Q01, Q02, Q03, Q04, Q05, Q06, Q07,
Q10, Q11, Q12, Q13, Q14, Q15, Q16, Q17,
Q20, Q21, Q22, Q23, Q24, Q25, Q26, Q27,
Q30, Q31, Q32, Q33, Q34, Q35, Q36, Q37,
Q40, Q41, Q42, Q43, Q44, Q45, Q46, Q47,
Q50, Q51, Q52, Q53, Q54, Q55, Q56, Q57,
Q60, Q61, Q62, Q63, Q64, Q65, Q66, Q67,
Q70, Q71, Q72, Q73, Q74, Q75, Q76, Q77,

H00, H01, H02, H03, H04, H05, H06, H07,
H10, H11, H12, H13, H14, H15, H16, H17,
H20, H21, H22, H23, H24, H25, H26, H27,
H30, H31, H32, H33, H34, H35, H36, H37,
H40, H41, H42, H43, H44, H45, H46, H47,
H50, H51, H52, H53, H54, H55, H56, H57,
H60, H61, H62, H63, H64, H65, H66, H67,
H70, H71, H72, H73, H74, H75, H76, H77   
);
input[15:0] H00, H01, H02, H03, H04, H05, H06, H07;
input[15:0] H10, H11, H12, H13, H14, H15, H16, H17;
input[15:0] H20, H21, H22, H23, H24, H25, H26, H27;
input[15:0] H30, H31, H32, H33, H34, H35, H36, H37;
input[15:0] H40, H41, H42, H43, H44, H45, H46, H47;
input[15:0] H50, H51, H52, H53, H54, H55, H56, H57;
input[15:0] H60, H61, H62, H63, H64, H65, H66, H67;
input[15:0] H70, H71, H72, H73, H74, H75, H76, H77;

output[15:0] Q00, Q01, Q02, Q03, Q04, Q05, Q06, Q07;
output[15:0] Q10, Q11, Q12, Q13, Q14, Q15, Q16, Q17;
output[15:0] Q20, Q21, Q22, Q23, Q24, Q25, Q26, Q27;
output[15:0] Q30, Q31, Q32, Q33, Q34, Q35, Q36, Q37;
output[15:0] Q40, Q41, Q42, Q43, Q44, Q45, Q46, Q47;
output[15:0] Q50, Q51, Q52, Q53, Q54, Q55, Q56, Q57;
output[15:0] Q60, Q61, Q62, Q63, Q64, Q65, Q66, Q67;
output[15:0] Q70, Q71, Q72, Q73, Q74, Q75, Q76, Q77;

wire[31:0] Qtmp00, Qtmp01, Qtmp02, Qtmp03, Qtmp04, Qtmp05, Qtmp06, Qtmp07;
wire[31:0] Qtmp10, Qtmp11, Qtmp12, Qtmp13, Qtmp14, Qtmp15, Qtmp16, Qtmp17;
wire[31:0] Qtmp20, Qtmp21, Qtmp22, Qtmp23, Qtmp24, Qtmp25, Qtmp26, Qtmp27;
wire[31:0] Qtmp30, Qtmp31, Qtmp32, Qtmp33, Qtmp34, Qtmp35, Qtmp36, Qtmp37;
wire[31:0] Qtmp40, Qtmp41, Qtmp42, Qtmp43, Qtmp44, Qtmp45, Qtmp46, Qtmp47;
wire[31:0] Qtmp50, Qtmp51, Qtmp52, Qtmp53, Qtmp54, Qtmp55, Qtmp56, Qtmp57;
wire[31:0] Qtmp60, Qtmp61, Qtmp62, Qtmp63, Qtmp64, Qtmp65, Qtmp66, Qtmp67;
wire[31:0] Qtmp70, Qtmp71, Qtmp72, Qtmp73, Qtmp74, Qtmp75, Qtmp76, Qtmp77;
wire  [15:0] Qm[7:0][7:0];

assign Qm[0][0]=16'b0000000000010000;
assign Qm[0][1]=16'b0000000000010101;
assign Qm[0][2]=16'b0000000000010010;
assign Qm[0][3]=16'b0000000000010010;
assign Qm[0][4]=16'b0000000000001110;
assign Qm[0][5]=16'b0000000000001010;
assign Qm[0][6]=16'b0000000000000101;
assign Qm[0][7]=16'b0000000000000011;

assign Qm[1][0]=16'b0000000000010111;
assign Qm[1][1]=16'b0000000000010101;
assign Qm[1][2]=16'b0000000000010011;
assign Qm[1][3]=16'b0000000000001111;
assign Qm[1][4]=16'b0000000000001011;
assign Qm[1][5]=16'b0000000000000111;
assign Qm[1][6]=16'b0000000000000100;
assign Qm[1][7]=16'b0000000000000010;

assign Qm[2][0]=16'b0000000000011001;
assign Qm[2][1]=16'b0000000000010010;
assign Qm[2][2]=16'b0000000000010000;
assign Qm[2][3]=16'b0000000000001011;
assign Qm[2][4]=16'b0000000000000110;
assign Qm[2][5]=16'b0000000000000100;
assign Qm[2][6]=16'b0000000000000011;
assign Qm[2][7]=16'b0000000000000010;

assign Qm[3][0]=16'b0000000000010000;
assign Qm[3][1]=16'b0000000000001101;
assign Qm[3][2]=16'b0000000000001010;
assign Qm[3][3]=16'b0000000000001000;
assign Qm[3][4]=16'b0000000000000100;
assign Qm[3][5]=16'b0000000000000100;
assign Qm[3][6]=16'b0000000000000010;
assign Qm[3][7]=16'b0000000000000010;

assign Qm[4][0]=16'b0000000000001010;
assign Qm[4][1]=16'b0000000000001001;
assign Qm[4][2]=16'b0000000000000110;
assign Qm[4][3]=16'b0000000000000101;
assign Qm[4][4]=16'b0000000000000011;
assign Qm[4][5]=16'b0000000000000011;
assign Qm[4][6]=16'b0000000000000010;
assign Qm[4][7]=16'b0000000000000010;


assign Qm[5][0]=16'b0000000000000110;
assign Qm[5][1]=16'b0000000000000100;
assign Qm[5][2]=16'b0000000000000100;
assign Qm[5][3]=16'b0000000000000010;
assign Qm[5][4]=16'b0000000000000010;
assign Qm[5][5]=16'b0000000000000010;
assign Qm[5][6]=16'b0000000000000010;
assign Qm[5][7]=16'b0000000000000010;

assign Qm[6][0]=16'b0000000000000101;
assign Qm[6][1]=16'b0000000000000100;
assign Qm[6][2]=16'b0000000000000011;
assign Qm[6][3]=16'b0000000000000011;
assign Qm[6][4]=16'b0000000000000010;
assign Qm[6][5]=16'b0000000000000010;
assign Qm[6][6]=16'b0000000000000010;
assign Qm[6][7]=16'b0000000000000010;


assign Qm[7][0]=16'b0000000000000100;
assign Qm[7][1]=16'b0000000000000100;
assign Qm[7][2]=16'b0000000000000100;
assign Qm[7][3]=16'b0000000000000100;
assign Qm[7][4]=16'b0000000000000011;
assign Qm[7][5]=16'b0000000000000010;
assign Qm[7][6]=16'b0000000000000010;
assign Qm[7][7]=16'b0000000000000010;

assign Qtmp00=H00*Qm[0][0];
assign Qtmp01=H01*Qm[0][1];
assign Qtmp02=H02*Qm[0][2];
assign Qtmp03=H03*Qm[0][3];
assign Qtmp04=H04*Qm[0][4];
assign Qtmp05=H05*Qm[0][5];
assign Qtmp06=H06*Qm[0][6];
assign Qtmp07=H07*Qm[0][7];

assign Qtmp10=H10*Qm[1][0];
assign Qtmp11=H11*Qm[1][1];
assign Qtmp12=H12*Qm[1][2];
assign Qtmp13=H13*Qm[1][3];
assign Qtmp14=H14*Qm[1][4];
assign Qtmp15=H15*Qm[1][5];
assign Qtmp16=H16*Qm[1][6];
assign Qtmp17=H17*Qm[1][7];

assign Qtmp20=H20*Qm[2][0];
assign Qtmp21=H21*Qm[2][1];
assign Qtmp22=H22*Qm[2][2];
assign Qtmp23=H23*Qm[2][3];
assign Qtmp24=H24*Qm[2][4];
assign Qtmp25=H25*Qm[2][5];
assign Qtmp26=H26*Qm[2][6];
assign Qtmp27=H27*Qm[2][7];

assign Qtmp30=H30*Qm[3][0];
assign Qtmp31=H31*Qm[3][1];
assign Qtmp32=H32*Qm[3][2];
assign Qtmp33=H33*Qm[3][3];
assign Qtmp34=H34*Qm[3][4];
assign Qtmp35=H35*Qm[3][5];
assign Qtmp36=H36*Qm[3][6];
assign Qtmp37=H37*Qm[3][7];

assign Qtmp40=H40*Qm[4][0];
assign Qtmp41=H41*Qm[4][1];
assign Qtmp42=H42*Qm[4][2];
assign Qtmp43=H43*Qm[4][3];
assign Qtmp44=H44*Qm[4][4];
assign Qtmp45=H45*Qm[4][5];
assign Qtmp46=H46*Qm[4][6];
assign Qtmp47=H47*Qm[4][7];

assign Qtmp50=H50*Qm[5][0];
assign Qtmp51=H51*Qm[5][1];
assign Qtmp52=H52*Qm[5][2];
assign Qtmp53=H53*Qm[5][3];
assign Qtmp54=H54*Qm[5][4];
assign Qtmp55=H55*Qm[5][5];
assign Qtmp56=H56*Qm[5][6];
assign Qtmp57=H57*Qm[5][7];

assign Qtmp60=H60*Qm[6][0];
assign Qtmp61=H61*Qm[6][1];
assign Qtmp62=H62*Qm[6][2];
assign Qtmp63=H63*Qm[6][3];
assign Qtmp64=H64*Qm[6][4];
assign Qtmp65=H65*Qm[6][5];
assign Qtmp66=H66*Qm[6][6];
assign Qtmp67=H67*Qm[6][7];

assign Qtmp70=H70*Qm[7][0];
assign Qtmp71=H71*Qm[7][1];
assign Qtmp72=H72*Qm[7][2];
assign Qtmp73=H73*Qm[7][3];
assign Qtmp74=H74*Qm[7][4];
assign Qtmp75=H75*Qm[7][5];
assign Qtmp76=H76*Qm[7][6];
assign Qtmp77=H77*Qm[7][7];

assign Q00= Qtmp00[23:8];
assign Q01= Qtmp01[23:8];
assign Q02= Qtmp02[23:8];
assign Q03= Qtmp03[23:8];
assign Q04= Qtmp04[23:8];
assign Q05= Qtmp05[23:8];
assign Q06= Qtmp06[23:8];
assign Q07= Qtmp07[23:8];

assign Q10= Qtmp10[23:8];
assign Q11= Qtmp11[23:8];
assign Q12= Qtmp12[23:8];
assign Q13= Qtmp13[23:8];
assign Q14= Qtmp14[23:8];
assign Q15= Qtmp15[23:8];
assign Q16= Qtmp16[23:8];
assign Q17= Qtmp17[23:8];

assign Q20= Qtmp20[23:8];
assign Q21= Qtmp21[23:8];
assign Q22= Qtmp22[23:8];
assign Q23= Qtmp23[23:8];
assign Q24= Qtmp24[23:8];
assign Q25= Qtmp25[23:8];
assign Q26= Qtmp26[23:8];
assign Q27= Qtmp27[23:8];

assign Q30= Qtmp30[23:8];
assign Q31= Qtmp31[23:8];
assign Q32= Qtmp32[23:8];
assign Q33= Qtmp33[23:8];
assign Q34= Qtmp34[23:8];
assign Q35= Qtmp35[23:8];
assign Q36= Qtmp36[23:8];
assign Q37= Qtmp37[23:8];

assign Q40= Qtmp40[23:8];
assign Q41= Qtmp41[23:8];
assign Q42= Qtmp42[23:8];
assign Q43= Qtmp43[23:8];
assign Q44= Qtmp44[23:8];
assign Q45= Qtmp45[23:8];
assign Q46= Qtmp46[23:8];
assign Q47= Qtmp47[23:8];

assign Q50= Qtmp50[23:8];
assign Q51= Qtmp51[23:8];
assign Q52= Qtmp52[23:8];
assign Q53= Qtmp53[23:8];
assign Q54= Qtmp54[23:8];
assign Q55= Qtmp55[23:8];
assign Q56= Qtmp56[23:8];
assign Q57= Qtmp57[23:8];

assign Q60= Qtmp60[23:8];
assign Q61= Qtmp61[23:8];
assign Q62= Qtmp62[23:8];
assign Q63= Qtmp63[23:8];
assign Q64= Qtmp64[23:8];
assign Q65= Qtmp65[23:8];
assign Q66= Qtmp66[23:8];
assign Q67= Qtmp67[23:8];

assign Q70= Qtmp70[23:8];
assign Q71= Qtmp71[23:8];
assign Q72= Qtmp72[23:8];
assign Q73= Qtmp73[23:8];
assign Q74= Qtmp74[23:8];
assign Q75= Qtmp75[23:8];
assign Q76= Qtmp76[23:8];
assign Q77= Qtmp77[23:8];


endmodule
