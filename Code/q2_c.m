clc;
close all;
syms t;
xt = 2*cos(2*pi*t) + cos(6*pi*t);
t1 = -0.5;
t2 = 0.5;
N =5;
T=1;

F =fourierCoeff(t,xt,T,t1,t2,N);
time_grid = -0.5:0.01:0.5;
y = partialfouriersum(F,T,time_grid);
yt = 2*cos(2*pi*time_grid) + cos(6*pi*time_grid);
MAE = max(abs(y-yt)); 
RMSE = sqrt(mean((y-yt).^2)); 

disp(MAE);%Ans:1/4503599627370496

disp(RMSE);%Ans:(5*65^(1/2)*202^(1/2))/7277816997830721536


