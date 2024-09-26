module F_circuit (
    a, b, c, d, F
);
input a, b, c, d;
output F;
wire b1, d1, f1, f2;
not(b1, b);
not(d1, d);
and(f1, b1, d1);
and(f2, b1, c);
or(F, a, f1, f2);
endmodule

module tb();
wire F;
reg a, b, c, d;
F_circuit A(a, b, c, d, F);
initial begin
    #2 a=0; b=0; c=0; d=0; //1
    #2 d=1; //2
    #2 c=1; d=0; //3
    #2 d=1; //4
    #2 b=1; c=0; d=0; //5
    #2 d=1 //6
    #2 c=1; d=0; //7
    #2 d=1; //8
    #2 a=1; b=0; c=0; d=0; //9
    #2 d=1; //10
    #2 c=1; d=0; //11
    #2 d=1; //12
    #2 b=1; c=0; d=0; //13
    #2 d=1 //14
    #2 c=1; d=0; //15
    #2 d=1; //16
    #2 $finish;

end
endmodule