// Code your design here
module half_adder_structural(
  input A,
  input B,
  output Sum,
  output Carry
);
  
  //Instantiate Verilog built-in primitives and connect them with nets
  xor XOR1 (Sum, A, B); // instantiate a XOR gate 
  and AND1 (Carry, A, B);
  
endmodule