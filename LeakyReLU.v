module LeakyReLU #(width = 4) (
  input  wire [width-1:0] Signal,
  output reg  [width-1:0] OutputSignal
);
  reg [width-1:0] LeakyInput;

  always @(*) begin
    LeakyInput   = Signal << 1; //Assuming the Constant is 2, for smaller constants like 0.002 we will need FP multiplier
    OutputSignal = Signal[width-1]? LeakyInput : Signal;
  end
endmodule
