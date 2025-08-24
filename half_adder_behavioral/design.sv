// Code your design here
module half_adder_behavioral(
  input A,
  input B,
  output reg Sum,
  output reg Carry
);
  
  //Beharioral style
  always @(*) begin
    Sum = A ^ B; //A XOR B 
    Carry = A & B; //A AND B
    //Could be concatenation mode: {Carry, Sum} = A + B;
  end
  
endmodule