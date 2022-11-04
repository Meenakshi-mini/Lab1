function Y = partialfouriersum (A, T, time_grid)
    Y=zeros(size(time_grid));
    w0=2*pi/T;% frequency
    g=-(length(A)-1)/2:1:(length(A)-1)/2;
    for k=1:length(g)
        Y=Y+A(k)*exp(1i*g(k)*w0*time_grid); % formula for x(t) to generate reconstructed signal
    end
    Y=real(Y);
end