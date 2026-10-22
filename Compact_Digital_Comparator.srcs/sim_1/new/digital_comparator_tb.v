`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2026 20:45:29
// Design Name: 
// Module Name: digital_comparator_tb
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


`timescale 1ns / 1ps

module digital_comparator_tb;

    reg [3:0] A;
    reg [3:0] B;

    wire LED_GREATER;
    wire LED_EQUAL;
    wire LED_LESS;
    wire [1:0] STATE;

    digital_comparator DUT (
        .A(A),
        .B(B),
        .LED_GREATER(LED_GREATER),
        .LED_EQUAL(LED_EQUAL),
        .LED_LESS(LED_LESS),
        .STATE(STATE)
    );

    initial begin

        // Test 1: A > B
        A = 4'b1001;
        B = 4'b0101;
        #10;

        // Test 2: A = B
        A = 4'b0111;
        B = 4'b0111;
        #10;

        // Test 3: A < B
        A = 4'b0011;
        B = 4'b1000;
        #10;

        // Test 4: A > B
        A = 4'b1111;
        B = 4'b0010;
        #10;

        // Test 5: A < B
        A = 4'b0001;
        B = 4'b0110;
        #10;

        $finish;

    end

endmodule
