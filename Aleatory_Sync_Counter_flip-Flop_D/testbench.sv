module tb_counter_d_3x8_aleatory;
  reg clk;
  reg reset;
  wire [2:0] led;
  
  // Instancia o módulo a ser testado (UUT - Unit Under Test)
  counter_d_3x8_aleatory uut (
    .clk(clk),
    .reset(reset),
    .led(led)
  );

    initial clk = 1'b0;
    // Alterna a cada 5 unidades de tempo
    always #5 clk = ~clk;
  
    // Inicializando a gravação de dump para ondas
  initial begin
    $dumpfile("counter_d_3x8_aleatory.vcd"); 
    $dumpvars(0, tb_counter_d_3x8_aleatory);
  end

   
  initial begin
    reset = 1'b0;
    #15 reset = 1'b1;
    #10 reset = 1'b0;
  end  

  initial begin
    #200;
    $finish;
  end
  
  initial $monitor("t=%0t ns, reset=%b, led=%b", $time, reset, led);
  
endmodule
