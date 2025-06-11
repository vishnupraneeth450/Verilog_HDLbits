module top_module( 
    input [254:0] in,
    output [7:0] out );
    reg [7:0]temp;
    always@(*)
        begin
            temp=8'b0;
            for(int i=0;i<=254;i++)begin
                temp=(in[i]==1'b1) ?temp+1 : temp;
            end
            
        end
    assign out=temp;

endmodule
