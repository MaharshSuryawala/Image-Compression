`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:03:05 10/31/2017 
// Design Name: 
// Module Name:    Test 
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
module Test(clk
    );
input clk;	 
real D1,D12;
//integer [15:0] Din[7:0][7:0];

always@(posedge clk)begin
 D1 = 0.3535533;
 D12 = -0.490392640201615;
 end





endmodule
