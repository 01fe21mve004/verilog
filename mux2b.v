`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:47:12 03/09/2022 
// Design Name: 
// Module Name:    mux2b 
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
module mux2b(
input d0,
input d1,
input s,
output reg y
);
always@ (d0,d1,s)
begin
y=(d0&~s)|(d1&s);
end
endmodule


