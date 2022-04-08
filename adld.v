`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:37:37 03/09/2022 
// Design Name: 
// Module Name:    adld 
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
module adld(
input[3:0] a,
input[3:0] b,
input cin,
output[3:0] sum,
output cout
);
wire c0,c1,c2;
assign sum[0]=a[0]^b[0]^cin;
assign c0=(a[0]&b[0])|(b[0]&cin)|(cin&a[0]);
assign sum[1]=a[1]^b[1]^cin;
assign c1=(a[1]&b[1])|(b[1]&cin)|(cin&a[1]);
assign sum[2]=a[2]^b[2]^cin;
assign c2=(a[2]&b[2])|(b[2]&cin)|(cin&a[2]);
assign sum[3]=a[3]^b[3]^cin;
assign c3=(a[3]&b[3])|(b[3]&cin)|(cin&a[3]);
endmodule








