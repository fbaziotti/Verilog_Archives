// Code your design here
module muxNx1 #(
    parameter N = 4  // Número de entradas
)(
    input  wire [N-1:0] in,      // N entradas de 1 bit
    input  wire [$clog2(N)-1:0] sel, // Selecionador
    output wire out              // Saída de 1 bit
);

    assign out = in[sel];  // Seleção direta via índice

endmodule
