module Exercise2 (
    input  logic        clk,
    input  logic        reset_n,
    input  logic [15:0] init,
    output logic [15:0] out
);

logic feedback;

assign feedback = out[15] ^ out[13] ^ out[12] ^ out[10];

always_ff @(posedge clk) begin
    if (!reset_n)
        out <= init;
    else
        out <= {out[14:0], feedback};
end

endmodule
