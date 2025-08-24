// Code your testbench here
// or browse Examples
module tb_ula_dataflow ();
  reg [3:0] A;
  reg [3:0] B;
  reg [2:0] S;
  wire [3:0] R;
  
  ula_dataflow uut (
    .A(A),
    .B(B),
    .S(S),
    .R(R)
  );
  
  initial begin
    $monitor("Time=%0d, A=%b, B=%b, S=%b, R=%b", $time, A, B, S, R);
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_ula_dataflow);
  end
  
  initial begin
    A = 4'b1010; // A = 10
    B = 4'b0101; // B = 5

    S = 3'b000; #10; // AND
    S = 3'b001; #10; // OR
    S = 3'b010; #10; // NOT A
    S = 3'b011; #10; // NAND
    S = 3'b100; #10; // SUM
    S = 3'b101; #10; // SUB
    S = 3'b110; #10; // LSL
    S = 3'b111; #10; // LSR

    $stop;
  end
endmodule
