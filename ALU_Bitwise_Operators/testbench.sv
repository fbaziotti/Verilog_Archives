// Code your testbench here
// or browse Examples
`timescale 1ns/1ps

module bitwise_operators_tb;

    logic [7:0] x, y;
    logic [7:0] result;
    logic [2:0] op_code;

    bitwise_operators uut (
        .x(x),
        .y(y),
        .result(result),
        .op_code(op_code)
    );

    // Gerar arquivo para GTKWave
    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, bitwise_operators_tb);
    end

    initial begin
        $monitor("Time=%0t | x=%b, y=%b, op_code=%b, result=%b", $time, x, y, op_code, result);

        #1;
        x = 8'b00010101; y = 8'b11000111; op_code = 3'b000; // AND

        #1;
        op_code = 3'b001; // NAND

        #1;
        x = 8'b10010101; y = 8'b01101111; op_code = 3'b010; // OR

        #1;
        op_code = 3'b011; // NOR

        #1;
        x = 8'b01011001; y = 8'b01101100; op_code = 3'b100; // XOR

        #1;
        op_code = 3'b101; // NXOR

        #1;
        x = y; op_code = 3'b101; // NXOR

        #1;
        $finish;
    end

endmodule
