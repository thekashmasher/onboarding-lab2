module Exercise4 (
    input  logic        cs,
    input  logic [1:0]  sel,
    input  logic [7:0]  alpha,
    input  logic [7:0]  beta,
    input  logic [7:0]  gamma,
    output logic [7:0]  out
);

always_comb begin
    out = 8'd0;
    if (cs) begin
        case (sel)
            2'd0: out = alpha;
            2'd1: out = beta;
            2'd2: out = gamma;
            default: out = 8'd0;
        endcase
    end
end

endmodule
