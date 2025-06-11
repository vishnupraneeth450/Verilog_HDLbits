module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0]w1,w2;
    wire cout1,cout2,cout0;
    add16 add1(a[15:0],b[15:0],0,sum[15:0],cout0);
    add16 add2(a[31:16],b[31:16],0,w1,cout1);
    add16 add3(a[31:16],b[31:16],1,w2,cout2);
    mux mux1(.w0(w1),.w1(w2),.cout(cout0),.sum(sum[31:16]));
    
endmodule
module mux(input [15:0]w0,w1,output reg [15:0]sum,input cout);
    always @(*)
        begin
        if(cout==1'b0)
           sum=w0;
    	else
        	sum=w1;
    end
endmodule
    