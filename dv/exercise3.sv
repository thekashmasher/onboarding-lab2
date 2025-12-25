module Exercise3 (
    input  logic        clk,
    input  logic        reset,
    input  logic [7:0]  in,
    output logic [7:0]  out
);

logic [7:0] mid;

Mystery1 u_mystery1 (
    .clk   (clk),
    .reset (reset),
    .in    (in),
    .out   (mid)
);

Mystery2 u_mystery2 (
    .clk   (clk),
    .reset (reset),
    .in    (mid),
    .out   (out)
);

endmodule
