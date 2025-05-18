module mux16x1_bus_tb();
  reg [3:0] S; // 4 bits para seleção (0 a 15)
  reg [2:0] D [0:15]; // 16 entradas de 3 bits cada
  wire [2:0] Y; // Saída do MUX

  // Instancia o DUT
  mux16x1_bus uut (
    .S(S),
    .D0(D[0]), .D1(D[1]), .D2(D[2]), .D3(D[3]),
    .D4(D[4]), .D5(D[5]), .D6(D[6]), .D7(D[7]),
    .D8(D[8]), .D9(D[9]), .D10(D[10]), .D11(D[11]),
    .D12(D[12]), .D13(D[13]), .D14(D[14]), .D15(D[15]),
    .Y(Y)
  );

  // GTKWave dump
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, mux16x1_bus_tb);
  end

  // Estímulos de teste
  initial begin
    D[0]  = 3'b000; D[1]  = 3'b001; D[2]  = 3'b010; D[3]  = 3'b011;
    D[4]  = 3'b100; D[5]  = 3'b101; D[6]  = 3'b110; D[7]  = 3'b111;
    D[8]  = 3'b001; D[9]  = 3'b010; D[10] = 3'b011; D[11] = 3'b100;
    D[12] = 3'b101; D[13] = 3'b110; D[14] = 3'b111; D[15] = 3'b000;

    // Testa todas as seleções
    S = 4'd0;  #10;
    S = 4'd1;  #10;
    S = 4'd2;  #10;
    S = 4'd3;  #10;
    S = 4'd4;  #10;
    S = 4'd5;  #10;
    S = 4'd6;  #10;
    S = 4'd7;  #10;
    S = 4'd8;  #10;
    S = 4'd9;  #10;
    S = 4'd10; #10;
    S = 4'd11; #10;
    S = 4'd12; #10;
    S = 4'd13; #10;
    S = 4'd14; #10;
    S = 4'd15; #10;

    $stop;
  end

  // Monitor
  initial begin
    $monitor("Tempo = %0t | S = %b | Y = %b", $time, S, Y);
  end

endmodule
 