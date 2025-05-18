// Code your design here
module mux4x1 #(
    parameter N = 8  // Largura padrão do barramento
)(
    input  wire [N-1:0] in0,
    input  wire [N-1:0] in1,
    input  wire [N-1:0] in2,
    input  wire [N-1:0] in3,
    input  wire [1:0] sel,
    output reg  [N-1:0] out
);

    always @(*) begin
        case (sel)
            2'b00: out = in0;
            2'b01: out = in1;
            2'b10: out = in2;
            2'b11: out = in3;
            default: out = {N{1'b0}};  // Segurança: saída zerada em caso inesperado
        endcase
    end

endmodule
