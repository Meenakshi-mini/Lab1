clc;
close all;
clear;
syms t;
xt = 2*cos(2*pi*t) + cos(6*pi*t)
t1 = -0.5;
t2 = 0.5;
N =5;
T=1;

F =fourierCoeff(t,xt,T,t1,t2,N);
time_grid = -0.5:0.01:0.5;
y = partialfouriersum(F,T,time_grid);
plot(time_grid,y,'o',LineWidth = 5);
hold on;

plot(time_grid,2*cos(2*pi*time_grid) + cos(6*pi*time_grid),'r',LineWidth=0.5);
xlabel("time")
ylabel("Amplitude")
title("Original signal vs Reconstructed signal")

