module JK_Flip_Flop (
    J, K, CLK, Q, Qn
);
input J, K, CLK;
output Q, Qn;
wire J1, K1

nand(J1, Qn, J, CLK);
nand(K1, Q, K, CLK);
nand(Q, J1, Qn);
nand(Qn, K1, Q);
    
endmodule

module tb_JK_Flip_Flop();
reg J, K, CLK;
wire Q, Qn;

JK_Flip_Flop F(J, K, CLK, Q, Qn);
initial begin
    CLK = 0;
    forever #5 CLK = ~CLK;
end
initial begin
    #10 J=0; K=0;
    #10 K=1;
    #10 J=1; K=0;
    #10 J=1; K=1;
    #10 $finish;
end
endmodule