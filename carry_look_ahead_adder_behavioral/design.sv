// Code your design here
module carry_look_ahead_adder_behavioral(
  input [3:0] A,
  input [3:0] B,
  input Cin,
  output [3:0] S,
  output Cout
);
  wire [3:0] G;  // Gera (Generate)
  wire [3:0] P;  // Propaga (Propagate)
  wire [4:0] C;  // Carry interno

  assign G = A & B;
  assign P = A ^ B;
  assign C[0] = Cin;

  // Lógica de antevisão de transporte (carry look-ahead)
  assign C[1] = G[0] | (P[0] & C[0]);
  assign C[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & C[0]);
  assign C[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & C[0]);
  assign C[4] = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | 
                (P[3] & P[2] & P[1] & P[0] & C[0]);

  assign S = P ^ C[3:0];
  assign Cout = C[4];

endmodule
