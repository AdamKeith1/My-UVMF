`timescale 1ns/1ns

// --- Dependencies --- //
import uvm_pkg::*;
`include "uvm_macros.svh"

// --- Include Files --- //
`include "interface.sv"
`include "sequence_item.sv"
`include "sequence.sv"
`include "sequencer.sv"
`include "driver.sv"
`include "monitor.sv"
`include "agent.sv"
`include "scoreboard.sv"
`include "env.sv"
`include "test.sv"

module top;
  
  // --- Sim Clock --- //
  logic clk;
  weird_interface intf(.clk(clk));
  parameter CLK_PERIOD = 4;
  
  // --- DUT Instance --- //
  weird dut(
    .clk          (intf.clk) ,
    .n_rst        (intf.n_rst),
    .en           (intf.en),
    .foo          (intf.foo),
    .bar          (intf.bar),
    .foo_and_bar  (intf.foo_and_bar),
    .foo_or_bar   (intf.foo_or_bar),
    .foo_xor_bar  (intf.foo_xor_bar),
    .foo_nand_bar (intf.foo_nand_bar)
  );
  
  // --- Interface --- //
  initial begin
    uvm_config_db #(virtual weird_interface)::set(null, "*", "vif", intf);
  end
  
  // --- Start Test --- //
  initial begin
    run_test("weird_test");
  end
  
  // --- Clock Generation --- //
  always begin: CLK_GEN
      clk = 1'b1;
      #(0.5 * CLK_PERIOD);
      clk = 1'b0;
      #(0.5 * CLK_PERIOD);
  end

  // --- Maximum Sim Duration --- //
  initial begin
    #(1000 * CLK_PERIOD);
    $display("Sorry! Ran out of clock cycles!");
    $finish();
  end
  
  // --- Generate Waveforms --- //
  initial begin
    $dumpfile("sim.vcd");
    $dumpvars();
  end
  
endmodule: top