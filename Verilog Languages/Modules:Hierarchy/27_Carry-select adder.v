module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire c_out;
    wire [15:0] one, two;
    wire [15:0] sum1, sum2;
    add16 inst1(a[15:0], b[15:0], 0, sum[15:0], c_out);
    add16 inst2(a[31:16], b[31:16], 0, sum1, two);
    add16 inst3(a[31:16], b[31:16], 1, sum2, two);
    
    always @(c_out, sum1, sum2) begin
        case(c_out)
            0 : sum[31:16] = sum1;
            1 : sum[31:16] = sum2;
        endcase
    end
endmodule
