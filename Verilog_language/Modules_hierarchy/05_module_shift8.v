module mux(input [7:0] w0,w1,w2,input [1:0] sel,output reg [7:0] q,input [7:0]d, input clk);
    always @(*)
            begin
                if(sel==2'b00)
                	q<=d;
                else if(sel==2'b01)
                    q<=w0;
                else if(sel==2'b10)
                    q<=w1;
                else if(sel==2'b11)
                    q<=w2;
                else
                    q<=2'b00;
            end
    
endmodule
module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    
    wire [7:0] w[2:0];
    my_dff8 dff1(.clk(clk),.d(d),.q(w[0]));
    my_dff8 dff2(.clk(clk),.d(w[0]),.q(w[1]));
    my_dff8 dff3(.clk(clk),.d(w[1]),.q(w[2]));
    mux mux1(.w0(w[0]),.w1(w[1]),.w2(w[2]),.sel(sel),.q(q),.d(d),.clk(clk));
endmodule
