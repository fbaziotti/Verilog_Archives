// Code your testbench here
// or browse Examples
 `timescale 1ns / 1ps

module tb_muxNx1;

    parameter N = 4;

    reg  [N-1:0] in;
    reg  [$clog2(N)-1:0] sel;
    wire out;

    // Instanciação do módulo
    muxNx1 #(N) uut (
        .in(in),
        .sel(sel),
        .out(out)
    );

    initial begin
        $dumpfile("muxNx1.vcd");
        $dumpvars(0, tb_muxNx1); 
      
        in = 4'b1010;

        sel = 2'b00; #10;
        $display("sel = %b -> out = %b (esperado: %b)", sel, out, in[sel]);

        sel = 2'b01; #10;
        $display("sel = %b -> out = %b (esperado: %b)", sel, out, in[sel]);

        sel = 2'b10; #10;
        $display("sel = %b -> out = %b (esperado: %b)", sel, out, in[sel]);

        sel = 2'b11; #10;
        $display("sel = %b -> out = %b (esperado: %b)", sel, out, in[sel]);

        $finish;
    end

endmodule
