module HalfAdder (
    A, B, Sum, Carry
);
input A, B;
output Sum, Carry;
xor (Sum, A, B);
and (Carry, A, B);
    
endmodule
module tb_haflAdder();
wire Sum, Carry;
reg A, B;
HalfAdder A(A, B, Sum, Carry);
initial begin
    #2 A=0; B=0
    #2 B=1;
    #2 A=1; B=0;
    #2 B=1;
    #2 $finish;

end
endmodule