//Representar uma saídaaleatória 4-1-6-5-2-3-7-0
module counter_d_3x8_aleatory (
  input wire clk,
  input wire reset,
  output reg [2:0]led
);
  reg [2:0] Q;
  wire [2:0] D;
  
  // Lógica sequencial (flip-flop com reset assíncrono)
  always @(posedge clk or posedge reset) begin
	if (reset)
	  Q <= 3'b000;
	else
	  Q <= D;
  end
  
    // Lógica combinacional para o próximo estado (D) 
  assign D[2] = (~Q[2] & ~Q[1]) | (~Q[2] & Q[0] | Q[2] & Q[1] & ~Q[0]);
  assign D[1] = (~Q[1] & Q[0]) | (~Q[2] & Q[1]);
  assign D[0] = (~Q[2] & Q[1]) | (Q[2] & ~Q[0]);
  

  assign led = Q;

endmodule