`include "alu_interface.svh"
`include "alu_pkg.svh"

/*
    - Yes typically an ALU is pure comb but for demo 
      I went ahead and clocked it so that feature is shown.
*/

module alu(
    input logic clk,
    input logic n_rst,
    alu_if      aluif
);
    // --- ALU Package -- //
    import alu_pkg::*; // error?

    // --- Logic --- //
    data_t result, nxt_result;

    // --- Flip-Flop --- //
    always_ff @(posedge clk, negedge n_rst) begin
        if (~n_rst) begin
            result <= '0;
        end else begin
            result <= nxt_result;
        end
    end

    // --- Comb Logic --- //
    always_comb begin
        case(aluif.opcode)
            ALU_ADD : nxt_result = aluif.a +  aluif.b;
            ALU_SUB : nxt_result = aluif.a -  aluif.b;
            ALU_AND : nxt_result = aluif.a &  aluif.b;
            ALU_XOR : nxt_result = aluif.a ^  aluif.b;
            ALU_SLL : nxt_result = aluif.a << aluif.b;
            ALU_OR  : nxt_result = aluif.a |  aluif.b;
            default : nxt_result = '0;
        endcase
    end

    // --- Assign Ouput --- //
    assign auif.out      = result;
    assign auif.zero     = (result == '0);
    assign auif.negative = (result[DATA_W-1] == 1'b1);

endmodule