
module ripple_counter(
    input clk,
    input reset,
    output [2:0] Q
);

    t_flip_flop tff0 (
        .T(1'b1),
        .clk(clk),
        .reset(reset),
        .Q(Q[0]),
        .Q_bar()
    );

    t_flip_flop tff1 (
        .T(1'b1),
        .clk(Q[0]),
        .reset(reset),
        .Q(Q[1]),
        .Q_bar()
    );

    t_flip_flop tff2 (
        .T(1'b1),
        .clk(Q[1]),
        .reset(reset),
        .Q(Q[2]),
        .Q_bar()
    );

endmodule
