clc;
close all;
clear;
syms t;
xt = 2*cos(2*pi*t) + cos(6*pi*t);
t1 = -0.5;
t2 = 0.5;
N =5;
T=1;
F =fourierCoeff(t,xt,T,t1,t2,N);
FS_idx = -N:N;
stem(FS_idx,F); 
xlabel("k------->");
ylabel("ak---------->");
title("Fourier Series Coefficients of 2cos(2𝜋𝑡) + cos(6𝜋𝑡)")