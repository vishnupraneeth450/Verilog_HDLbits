module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] w0;
    wire carry,temp;
    assign w0=b^{32{sub}};
    add16 add1(.a(a[15:0]),.b(w0[15:0]),.cin(sub),.sum(sum[15:0]),.cout(carry));
    add16 add2(.a(a[31:16]),.b(w0[31:16]),.cin(carry),.sum(sum[31:16]),.cout(temp));

endmodule
