// Code your testbench here
// or browse Examples
module mux_8x1_tb;
  reg [7:0] I;
  reg [2:0] S;
  wire Y;
  
  //iniciando o DUT
  mux_8x1 dut(.I(I), .S(S), .Y(Y));
  
  
    // GTKWave dump
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, mux_8x1_tb);
  end
    
  //estímuo randômico de teste
  initial 
    begin
      repeat(8)
        begin
        {S,I}=$random;
        #1;
          $display("I=%b, S=%b, Y=%b", I, S, Y);
        end
    end
endmodule
  