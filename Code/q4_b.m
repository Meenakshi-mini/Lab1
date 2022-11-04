clc;
syms t;
xt = t;
N = 10;
T = 1;
t1 =(-T/4);
t2 = T/4;



F =fourierCoeff(t,xt,T,t1,t2,N);
FS_idx = -N:N;
stem(FS_idx,abs(F)); 
xlabel("k------->");
ylabel("ak---------->");
title("q4_b)Fourier Series Coefficients")

