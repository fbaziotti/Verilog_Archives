// Code your design here
module mux_8x1(
  input [7:0] I,
  input [2:0] S,
  output Y
);
  
  wire Y1, Y2;
  mux_4x1 m1(I[3:0], S[1:0], Y1);
  mux_4x1 m2(I[7:4], S[1:0], Y2);
  mux_2x1 m3(Y1, Y2, S[2], Y);
endmodule
module mux_4x1(
  input [3:0] I,
  input [1:0] S,
  output reg Y
);
  always@(*)
    begin
      case(S)
        2'b00: Y=I[0];
        2'b01: Y=I[1];
        2'b10: Y=I[2];
        2'b11: Y=I[3];
      endcase
    end
endmodule

module mux_2x1(
  input I0, I1,
  input S,
  output Y
);
  assign Y=S?I1:I0;
endmodule
 

    
    
  