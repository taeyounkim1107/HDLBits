module top_module( 
    input [254:0] in,
    output [7:0] out
);

    integer i;
    reg [7:0] temp_out;
    
    always @ (*) begin
        temp_out = 0;
        for (i = 0; i < 255 ; i = i+1) begin
            temp_out = temp_out + in[i];
        end
    end
    
    assign out = temp_out;
    
endmodule
