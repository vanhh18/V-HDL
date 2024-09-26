module SR_Flip_Flop (
    S, R, Q, Qn, CLK
);
input S, R, CLK;
output Q, Qn;
wire S1, R1;

nand(S1, S, CLK);
nand(R1, R, CLK);
nand(Q, S1, Qn);
nand(Qn, R1, Q);
    
endmodule

module tb_SR_Flip_Flop();
reg S, R, CLK;
wire Q, Qn;
SR_Flip_Flop F(S, R, Q, Qn, CLK);
initial begin
    CLK = 0;
    forever 
         #5 CLK =~CLK
    end
initial begin
    #10 S=0; R=0;
    #10 R=1;
    #10 S=1; R=0;
    #10 R=1;
    #10 $finish;
    end
endmodule