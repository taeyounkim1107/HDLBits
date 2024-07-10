module top_module (input x, input y, output z);
    
    assign z = ((x & (x ^ y)) | (~(x ^ y))) ^ ((x & (x ^ y)) & (~(x ^ y)));
    
endmodule
