module ClippedReLU (
  input  wire [3:0] Signal,
  output wire [3:0] OutputSignal
);
  assign OutputSignal = Signal[3]? 4'b0000 : (Signal[1]? 4'b0010 : Signal); //Assunming the constant is 2
endmodule
