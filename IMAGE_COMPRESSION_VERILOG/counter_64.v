`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:41:35 10/31/2017 
// Design Name: 
// Module Name:    counter_64 
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
module counter_64(count, clk, rst);
parameter n=63
 
  output reg [n:0] count;
  input clk;
  input rst;
 
  // Set the initial value
  initial
    count = 0;
 
  // Increment count on clock
  always @(posedge clk or negedge rst)
    if (!rst)
      count = 0;
    else
      count = count + 1;


endmodule 
