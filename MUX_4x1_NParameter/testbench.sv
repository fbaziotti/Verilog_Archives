// Code your testbench here
// or browse Examples
module tb_mux4x1;

    parameter N = 3;

    reg  [N-1:0] in0, in1, in2, in3;
    reg  [1:0] sel;
    wire [N-1:0] out;

    // Instanciação do módulo
    mux4x1 #(N) uut (
        .in0(in0),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .sel(sel),
        .out(out)
    );
     // GTKWave dump 
    initial begin 
      $dumpfile("dump.vcd"); 
      $dumpvars(0, tb_mux4x1); 
    end

    initial begin
        // Estímulos
        in0 = 3'b000;
        in1 = 3'b001;
        in2 = 3'b010;
        in3 = 3'b011;

        sel = 2'b00; #10;
        $display("sel=%b, out=%b (esperado %b)", sel, out, in0);

        sel = 2'b01; #10;
        $display("sel=%b, out=%b (esperado %b)", sel, out, in1);

        sel = 2'b10; #10;
        $display("sel=%b, out=%b (esperado %b)", sel, out, in2);

        sel = 2'b11; #10;
        $display("sel=%b, out=%b (esperado %b)", sel, out, in3);

        $finish;
    end

endmodule
