`ifndef ALU_IF_SVH
`define ALU_IF_SVH

`include "alu_pkg.svh"

interface alu_if;
    //
    import alu_pkg::*;

    //
    logic negative;
    logic overflow;
    logic zero;

    opcode_t opcode;

    data_t a;
    data_t b;
    data_t out;

    modport alu (
        // --- Inputs --- //
        input a,
        input b,
        input opcode,
        // --- Outputs --- //
        output out,
        output negative,
        output overflow,
        output zero
    );

endinterface

`endif