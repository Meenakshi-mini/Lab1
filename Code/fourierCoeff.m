
function [c] = fourierCoeff(t,xt,T,t1,t2,N)
    
    w0 = (2*pi)/T;
    c=[];
    for k=-N:N
        c1 = (1/T)*int(xt*exp(-1i*w0*k*t),t,[t1 t2]);
        c =[c,c1];
    end
end