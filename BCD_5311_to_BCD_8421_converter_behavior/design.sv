// Code your design here
module conversor(bcd_5311, bcd_8421);
  input [3:0] bcd_5311;
  output reg [3:0] bcd_8421;
  
  always @(*)
    case (bcd_5311)
      4'b0000: bcd_8421 = 4'b0000; //0
      4'b0001: bcd_8421 = 4'b0001; //1
      4'b0011: bcd_8421 = 4'b0010; //2
      4'b0100: bcd_8421 = 4'b0011; //3
      4'b0101: bcd_8421 = 4'b0100; //4
      4'b0111: bcd_8421 = 4'b0101; //5
      4'b1001: bcd_8421 = 4'b0110; //6
      4'b1011: bcd_8421 = 4'b0111; //7 
      4'b1100: bcd_8421 = 4'b1000; //8
      4'b1101: bcd_8421 = 4'b1001; //9
      default: bcd_8421 = 4'bxxxx;
    endcase

  endmodule
      
    
      
        