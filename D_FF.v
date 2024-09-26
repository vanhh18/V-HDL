module D_Flip_Flop (
    D, CLK, Q, Qn
);
input D, CLK;
output Q, Qn;
wire Dn, D1, D2;

nand(D1, D, CLK);
not(Dn, D);
nand(D2, Dn, CLK);
nand(Q, D1, Qn);
nand(Qn, D2, Q);
    
endmodule

module tb_D_Flip_Flop();
reg D, CLK;
wire Q, Qn;

D_Flip_Flop F(D, CLK, Q, Qn);
initial begin
    CLK = 0;
    forever #5 CLK =~CLK;
end
initial begin
    #10 D=0;
    #10 D=1;
    #10 D=0;
    #10 D=1;
    #10 $finish;
end

endmodule