`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2026 20:44:05
// Design Name: 
// Module Name: digital_comparator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module digital_comparator (
    input  [3:0] A,
    input  [3:0] B,

    output reg LED_GREATER,
    output reg LED_EQUAL,
    output reg LED_LESS,

    output reg [1:0] STATE
);

always @(*) begin

    // Default values
    LED_GREATER = 1'b0;
    LED_EQUAL   = 1'b0;
    LED_LESS    = 1'b0;
    STATE       = 2'b00;

    if (A > B) begin
        LED_GREATER = 1'b1;
        STATE       = 2'b01;
    end

    else if (A == B) begin
        LED_EQUAL = 1'b1;
        STATE     = 2'b10;
    end

    else begin
        LED_LESS = 1'b1;
        STATE    = 2'b11;
    end

end

endmodule
