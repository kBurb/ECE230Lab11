module modulo_counter(
    input clk,
    input reset,
    output [2:0] Q,
    output reg_out
);

    wire [2:0] next_count;
    wire [2:0] sum;
    wire [2:0] carry;
    wire terminal_count;

    // Increment the current count by 1
    full_adder fa0 (
        .A(Q[0]),
        .B(1'b0),
        .Cin(1'b1),
        .Y(sum[0]),
        .Cout(carry[0])
    );

    full_adder fa1 (
        .A(Q[1]),
        .B(1'b0),
        .Cin(carry[0]),
        .Y(sum[1]),
        .Cout(carry[1])
    );

    full_adder fa2 (
        .A(Q[2]),
        .B(1'b0),
        .Cin(carry[1]),
        .Y(sum[2]),
        .Cout(carry[2])
    );

    // Detect count 5 (101)
    assign terminal_count = Q[2] & ~Q[1] & Q[0];

    // Reset next state at count 5
    assign next_count[0] = ~reset & ~terminal_count & sum[0];
    assign next_count[1] = ~reset & ~terminal_count & sum[1];
    assign next_count[2] = ~reset & ~terminal_count & sum[2];

    // Store the next state
    d_flip_flop dff0 (
        .D(next_count[0]),
        .clk(clk),
        .Q(Q[0]),
        .Q_bar()
    );

    d_flip_flop dff1 (
        .D(next_count[1]),
        .clk(clk),
        .Q(Q[1]),
        .Q_bar()
    );

    d_flip_flop dff2 (
        .D(next_count[2]),
        .clk(clk),
        .Q(Q[2]),
        .Q_bar()
    );

    // Output toggles once every six input clocks
    wire next_output;
    assign next_output = reg_out ^ terminal_count;

    d_flip_flop output_dff (
        .D(reset ? 1'b0 : next_output),
        .clk(clk),
        .Q(reg_out),
        .Q_bar()
    );

endmodule
