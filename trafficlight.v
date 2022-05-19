`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:33:33 05/19/2022 
// Design Name: 
// Module Name:    trafficlight 
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
module trafficlight(
output reg[2:0]north,
output reg[2:0]south,
output reg[2:0]east,
output reg[2:0]west,
input clk,
input rst);
reg[2:0]state;

parameter[2:0]north=3'b000;
parameter[2:0]north_x=3'b001;
parameter[2:0]south=3'b010;
parameter[2:0]south_x=3'b011;
parameter[2:0]east=3'b100;
parameter[2:0]east_x=3'b101;
parameter[2:0]west=3'b110;
parameter[2:0]west_x=3'b111;
reg[2:0] count;

always@(posedge clk,posedge rst)
begin
if(rst)
begin
state=north;
count=3'b000;
end
else

begin
if(count==3'b111)
begin
count=3'b000;
state=north;
end
end

north_x
begin
if(count==3'b011)
begin
count=3'b000;
state=south;
end
end

south:
begin
if(count==3'b111)
begin
count=3'b0
state=south_y;
end

south_x
begin
if(count==3'b011)
begin
count=3'b0;
state=east;
end
end

east:
begin
if(count=3'b111)
begin
count=3'b0;
state=east_y;
end
end


east_x
begin
if(count==3'b011)
begin
count=3'b0;
state=west;
end
end

west:
begin
if(count=3'b111)
begin
state=west_y;
count=3'b0;
end
end

west_x
begin
if(count==3'b011)
begin
state=north;
count=3'b0;
end
end

always@(state)
begin
case(state)
north:
begin
north=3'b001;
south=3'b100;
east=3'b100;
west=3'b100;
end 
endcase:north

north_x:
begin
north=3'b010;
south=3'b100;
east=3'b100;
west=3'b100;
end 
endcase:north_x

south:
begin
north=3'b100;
south=3'b001;
east=3'b100;
west=3'b100;
end 
endcase:south

south_x:
begin
north=3'b100;
south=3'b010;
east=3'b100;
west=3'b100;
end 
endcase:south_x

west:
begin
north=3'b100;
south=3'b100;
east=3'b100;
west=3'b011;
end 
endcase:west

west_x:
begin
north=3'b100;
south=3'b100;
east=3'b100;
west=3'b010;
end 
endcase:west_x

east:
begin
north=3'b100;
south=3'b100;
east=3'b001;
west=3'b100;
end 
endcase:east

east_x:
begin
north=3'b100;
south=3'b100;
east=3'b010;
west=3'b100;
end 
endcase:east_x
end 
endmodule




















