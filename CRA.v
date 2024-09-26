module FullAdder (
    A, B, C, Sum, Carry
);
input A, B, C;
output Sum, Carry;
wire s1, c1, c2;
xor (s1, A, B);
xor (Sum, s1, C);
and (c2, A, B);
and (c1, s1, C);
or (Carry, c1, c2);
    
endmodule
module CRA4bit (
    C_in, A, B, S, C_out
);
input [3:0] A, B;
input C_in;
output [3:0] S;
output C_out;
wire c0, c1, c2;

FullAdder f0(A[0], B[0], C_in, S[0], c0);
FullAdder f1(A[1], B[1], c0, S[1], c1);
FullAdder f2(A[2], B[2], c1, S[2], c2);
FullAdder f3(A[3], B[3], c2, S[3], C_out);
    
endmodule
module tb_RCA4bit();
wire [3:0]S;
wire C_out;
reg [3:0]A, B;
reg C_in;
RCA4bit F(C_in, A, B, S, C_out);
initial begin
    C_in = 0;
    A = 4'b0110;
    B = 4'b1100;
    #10
    A = 4'b1110;
    B = 4'b1000;
    #10
    A = 4'b0111;
    B = 4'b1110;
    #10
    A = 4'b0010;
    B = 4'b1001;
    #10
    $finish();
end
endmodule