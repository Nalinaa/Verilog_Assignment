module dem(input D, input [2:0]S,output Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7);
wire sbar0, sbar1, sbar2;
not n0 (sbar0, S[0]);
not n1 (sbar1, S[1]);
not n2 (sbar2, S[2]);
and a0 (Y0, sbar2, sbar1, sbar0, D );
and a1 (Y1, sbar2, sbar1, S[0], D );
and a2 (Y2, sbar2, S[1], sbar0, D );
and a3 (Y3, sbar2, S[1], S[0], D );
and a4 (Y4, S[2], sbar1, sbar0, D );
and a5 (Y5, S[2], sbar1, S[0], D );
and a6 (Y6, S[2], S[1], sbar0, D );
and a7 (Y7, S[2], S[1], S[0], D );
endmodule
