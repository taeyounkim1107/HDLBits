module top_module( 
    input [99:0] in,
    output [98:0] out_both,
    output [99:1] out_any,
    output [99:0] out_different );
    
    genvar i, j, k;
    
    generate 
        for (i = 0 ; i < 99 ; i++) begin : gen_both
            assign out_both[i] = in[i+1] & in[i];
        end
    endgenerate
        
    generate
        for (j = 1 ; j < 100 ; j++) begin : gen_any
            assign out_any[j] = in[j-1] | in[j];
        end
    endgenerate
        
    generate
        for (k = 0 ; k < 100 ; k++) begin: gen_different
            if (k == 99) begin
                assign out_different[k] = in[0] ^ in[k];
            end
            else begin
                assign out_different[k] = in[k+1] ^ in[k];
            end    
        end
    endgenerate    

endmodule
