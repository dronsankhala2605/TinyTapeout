`default_nettype none
`timescale 1ns / 1ps

/* This testbench just instantiates the module and makes some convenient wires
   that can be driven / tested by the cocotb test.py.
*/
module test_tb();

  // Dump the signals to a VCD file. You can view it with gtkwave.
  initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0, tb);
    #1;
  end

  // Wire up the inputs and outputs:
 reg clock,reset;
wire [3:0]count;

tt_um_test dut(.clock(clock),.reset(reset),.count(count));

initial
 begin
      reset = 1'b0;
  #10 reset = 1'b1;
  #10 reset = 1'b0;
 end
 
initial
 begin
      clock = 1'b0;
  #40 clock = 1'b1;
  forever #40 clock = ~clock;
 end
 
initial
 #500 $finish;
 
endmodule
