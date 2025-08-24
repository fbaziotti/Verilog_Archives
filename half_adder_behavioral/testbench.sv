// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
module testbench();
  
  //Declare variables and nets for module ports
  reg A;
  reg B;
  wire Sum;
  wire Aarry;
  
  //Instantiate the module using "dot name" style
  half_adder_behavioral HALF_ADD(
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
    $dumpvars(0, testbench);
  end
  
  initial begin
    #1; A = 0; B= 0;
    #1; A = 0; B= 1;
    #1; A = 1; B= 0;
    #1; A= 1; B= 1;
    #1; A= 0; B= 0;
    #1; A= 1; B= 1;
  end
  
endmodule
  