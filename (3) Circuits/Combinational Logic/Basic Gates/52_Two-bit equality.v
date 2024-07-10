module top_module ( input [1:0] A, input [1:0] B, output z ); 
	
    reg [1:0] temp;
    
    always @ (*) begin
        
        temp = A - B;
        
        if (temp) begin
        	z = 0;
        end
        else begin
        	z = 1;
        end
    end
    
endmodule
