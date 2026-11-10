
module t_flip_flop(
    input T,
    input clk,
    input reset,
    output Q,
    output Q_bar
);

    jk_flip_flop jkff_inst (
        .J(T),
        .K(T),
        .clk(clk),
        .reset(reset),
        .Q(Q),
        .Q_bar(Q_bar)
    );

endmodule
