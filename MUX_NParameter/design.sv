module mux16x1_bus (
  input [3:0] S,
  input [2:0] D0, D1, D2, D3, D4, D5, D6, D7,
              D8, D9, D10, D11, D12, D13, D14, D15,
  output reg [2:0] Y
);
  always @(*) begin
    case (S)
      4'd0: Y = D0;
      4'd1: Y = D1;
      4'd2: Y = D2;
      4'd3: Y = D3;
      4'd4: Y = D4;
      4'd5: Y = D5;
      4'd6: Y = D6;
      4'd7: Y = D7;
      4'd8: Y = D8;
      4'd9: Y = D9;
      4'd10: Y = D10;
      4'd11: Y = D11;
      4'd12: Y = D12;
      4'd13: Y = D13;
      4'd14: Y = D14;
      4'd15: Y = D15;
    endcase
  end
endmodule
