clc;
close all;
syms t;
xt = 1;
t1 =-0.1;
t2 = 0.1;
c=1;
for T=[1,10,20]
    N = 10*T;
    F =fourierCoeff(t,xt,T,t1,t2,N);
    FS_idx = -N:N;
    subplot(3,1,c)
    stem(FS_idx,F*T); 
    xlabel("k------->");
    ylabel("ak---------->");
    title("Fourier Series Coefficients of Square signal,T="+T)
    c=c+1;
end
