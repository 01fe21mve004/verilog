`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:35:34 03/16/2022 
// Design Name: 
// Module Name:    mulpath 
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
module MUL_datapath(eqz,lda,ldb,ldp,clrp,decb,data_in,clk);
input lda;
input ldb;
input ldp;
input clrp;
input decb;
input clk;
input [15:0] data_in;
output eqz;
wire [15:0] x,y,z,bout,bus;
PIPO1 a (x,bus,lda,clk);
PIPO2 p (y,z,ldp,clrp,clk);
CNTR  b (bout,bus,ldb,decb,clk);
ADD ad(z,X,Y);
EQZ cmp(eqz,bout);
endmodule


