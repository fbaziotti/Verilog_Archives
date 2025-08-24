// Code your design here
module ula_dataflow (
  input [3:0] A,
  input [3:0] B,
  input [2:0] S,
  output [3:0] R
);
  wire [3:0] op_and  = A & B;
  wire [3:0] op_or   = A | B;
  wire [3:0] op_not  = ~A;
  wire [3:0] op_nand = ~(A & B);
  wire [3:0] op_sum  = A + B;
  wire [3:0] op_sub  = A - B;
  wire [3:0] op_lsl  = A << 1;
  wire [3:0] op_lsr  = A >> 1;

  assign R =
    (S == 3'b000) ? op_and  :
    (S == 3'b001) ? op_or   :
    (S == 3'b010) ? op_not  :
    (S == 3'b011) ? op_nand :
    (S == 3'b100) ? op_sum  :
    (S == 3'b101) ? op_sub  :
    (S == 3'b110) ? op_lsl  :
    (S == 3'b111) ? op_lsr  :
                   4'b0000;
endmodule
