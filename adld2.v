`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:51:53 03/09/2022 
// Design Name: 
// Module Name:    adld2 
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
module adld2(
input [3:0] a,
input [3:0] b,
input cin,
output [3:0] sum,
output cout
);
wire c0,c1,c2;
 FA a1 (a[0],b[0],cin,sum[0],c0);
 FA a2 (a[1],b[1],cin,sum[1],c1);
 FA a3 (a[2],b[2],cin,sum[2],c2);
 FA a4 (a[3],b[3],cin,sum[3],cout);
endmodule


