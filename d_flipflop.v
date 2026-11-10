
module d_flip_flop(
    input D,
    input clk,
    input reset,
    output reg Q,
    output Q_bar
);

    initial begin
        Q <= 0;
    end

    always @(posedge clk) begin
        if (reset)
            Q <= 0;
        else
            Q <= D;
    end

    assign Q_bar = ~Q;

endmodule
