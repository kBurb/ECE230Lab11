
module jk_flip_flop(
    input J,
    input K,
    input clk,
    input reset,
    output Q,
    output Q_bar
);

    wire D;

    assign D = (J & ~Q) | (~K & Q);

    d_flip_flop dff_inst (
        .D(D),
        .clk(clk),
        .reset(reset),
        .Q(Q),
        .Q_bar(Q_bar)
    );

endmodule
