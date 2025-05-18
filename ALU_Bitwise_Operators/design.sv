// Code your design here

module bitwise_operators(
  input logic [7:0] x, //entrada 6biys na variável x
  input logic [7:0] y, //entrada 8bits na variável x
  output logic [7:0] result, //saída 8bits na variável result
  input logic [2:0] op_code //operação lógica de 3 bits entre as as variáveis x e y e a saída result
);

  always@ (*) begin
        case (op_code)
            3'b000: result = x & y;       // AND
            3'b001: result = ~(x & y);    // NAND
            3'b010: result = x | y;       // OR
            3'b011: result = ~(x | y);    // NOR
            3'b100: result = x ^ y;       // XOR
            3'b101: result = x ~^ y;      // NXOR
            default: result = 8'b00000000;
        endcase
    end

endmodule
