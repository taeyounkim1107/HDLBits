module top_module (
    input a,
    input b,
    input c,
    input d,
    output q );//
    wire n_a, n_b, n_c, n_d;
    assign n_a = ~a;
    assign n_b = ~b;
    assign n_c = ~c;
    assign n_d = ~d;
    
    assign q = n_a*n_b*n_c*n_d + n_a*n_b*c*d + n_a*b*n_c*d + n_a*b*c*n_d + a*b*n_c*n_d + a*b*c*d + a*n_b*n_c*d + a*n_b*c*n_d; // Fix me

endmodule
