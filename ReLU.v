module ReLU (
  input  wire [3:0] Signal,
  output wire [3:0] OutputSignal
  );
  assign OutputSignal = Signal[3]? 4'b0 : Signal;
endmodule
