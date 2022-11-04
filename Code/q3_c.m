clc;
close all;
clear;
syms t;
xt = 1;
t1 = -0.1;
t2 = 0.1;
T=1;
c=1;
for N=[50,100]
    disp(N);
    F =fourierCoeff(t,xt,T,t1,t2,N);
    time_grid = -0.5:0.01:0.5;
    y = partialfouriersum(F,T,time_grid);
    subplot(3,1,c);
    plot(time_grid,y);    
    xlabel("time");
    ylabel("amplitude");
    title("Reconstructed signal,N="+N);
    c=c+1;
end