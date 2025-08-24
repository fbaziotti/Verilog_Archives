// Code your testbench here
// or browse Examples
module tb_carry_look_ahead_adder;

  reg [3:0] A, B;
  reg Cin;
  wire [3:0] S;
  wire Cout;

  carry_look_ahead_adder_behavioral uut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .S(S),
    .Cout(Cout)
  );

  initial begin
    // VCD setup
    $dumpfile("cla_waveform.vcd");   // Nome do arquivo VCD
    $dumpvars(0, tb_carry_look_ahead_adder); // Dumpa todos os sinais do testbench
    
    $display("Time\tA\tB\    Cin\    |  \tS\tCout");
    $monitor("%0t\t%b\t%b\t%b\t|\t%b\t%b", $time, A, B, Cin, S, Cout);

    // Teste 1: 3 + 2 + 0 = 5
    A = 4'b0011; B = 4'b0010; Cin = 0; #10;

    // Teste 2: 7 + 8 + 0 = 15
    A = 4'b0111; B = 4'b1000; Cin = 0; #10;

    // Teste 3: 15 + 1 + 0 = 16
    A = 4'b1111; B = 4'b0001; Cin = 0; #10;

    // Teste 4: 5 + 9 + 1 = 15
    A = 4'b0101; B = 4'b1001; Cin = 1; #10;

    // Teste 5: 15 + 15 + 1 = 31
    A = 4'b1111; B = 4'b1111; Cin = 1; #10;

    $finish;
  end

endmodule
  