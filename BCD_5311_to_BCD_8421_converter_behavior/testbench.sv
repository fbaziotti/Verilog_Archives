module conversor_tb();
  reg [3:0] bcd_5311;
  wire [3:0] bcd_8421;
  
  // Instantiate the DUT
  conversor DUT (
    .bcd_5311(bcd_5311),
    .bcd_8421(bcd_8421)
  );
  
  // Generate stimulus and monitor module ports
  initial begin
    $monitor("bcd_5311=%b, bcd_8421=%b", bcd_5311, bcd_8421);
  end
  
  // Waveform dump for simulation
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, conversor_tb);
  
    
    // Test cases
    bcd_5311 = 4'b0000; #10; // 0
    bcd_5311 = 4'b0001; #10; // 1
    bcd_5311 = 4'b0011; #10; // 2
    bcd_5311 = 4'b0100; #10; // 3
    bcd_5311 = 4'b0101; #10; // 4
    bcd_5311 = 4'b0111; #10; // 5
    bcd_5311 = 4'b1001; #10; // 6
    bcd_5311 = 4'b1011; #10; // 7
    bcd_5311 = 4'b1100; #10; // 8
    bcd_5311 = 4'b1101; #10; // 9
    $stop;
  end
endmodule
