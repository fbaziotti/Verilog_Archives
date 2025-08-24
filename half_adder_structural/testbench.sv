// Code your testbench here
// or browse Examples
module half_adder_tb();
  
  //Declare variables and nets for module ports
  reg A;
  reg B;
  wire Sum;
  wire Carry;
  
  //Instantiate the module using "dot name" style
  half_adder_structural HALF_ADD(
    .A(A),
    .B(B),
    .Sum(Sum),
    .Carry(Carry)
  );
  
 
  // Generate stimulus and monitor module ports
  initial begin
    $monitor("a=%b, b=%b, sum=%b, carry=%b", A, B, Sum, Carry);
  end
  
   // Waveform
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, half_adder_tb);
  end
  
  initial begin
    #1; A = 0; B = 0;
    #1; A = 0; B = 1;
    #1; A = 1; B = 0;
    #1; A = 1; B = 1;
    #1; A = 0; B = 0;
  end
  
endmodule
  