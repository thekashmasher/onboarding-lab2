module Exercise1 (
    input  logic [1:0] op,
    input  logic [7:0] a,
    input  logic [7:0] b,
    output logic [7:0] out
);

assign out =
    (op == 2'd0) ? (a + b) :
    (op == 2'd1) ? (a - b) :
    (op == 2'd2) ? (a & b) :
    (op == 2'd3) ? (a | b) :
                   8'd0;

endmodule
