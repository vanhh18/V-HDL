module T_Flip_Flop (
    T, CLK, Q, Qn
);
input T, CLK;
output Q, Qn;
wire T1, T2;

and(T1, T, CLK, Q);
and(T2, T, CLK, Qn);
nor(Q, T1, Qn);
nor(Qn, T2, Q);
    
endmodule

module tb_T_Flip_Flop();
reg T, CLK;
wire Q, Qn;

T_Flip_Flop F(T, CLK, Q, Qn);
initial begin
    CLK = 0;
    forever #5 CLK=~CLK;
end
initial begin
    #10 T=0;
    #10 T=1;
    #10 T=0;
    #10 T=1;
    #10 $finish;
end

endmodule