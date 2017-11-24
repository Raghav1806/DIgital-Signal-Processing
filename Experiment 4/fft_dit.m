% during input, note that it shall be interpreted in the form:
% (For 8-point FFT_DIT)
% 0, 4, 2, 6, 1, 5, 3, 7
% and output is of the form:
% 0, 1, 2, 3, 4, 5, 6, 7

function [x] = fft_dit(x)
n = length(x);
w = exp(-(sqrt(-1)*2*pi)/n);
if(n == 1)
    return;
else
    L = fft_dit(x(1:n/2));
    R = fft_dit(x(n/2+1:n));
    for i = 1:(n/2)
        x(i) = L(i) + (w^(i-1))*R(i);
    end
    for j = 1:n/2
        x(j+n/2) = L(j) - (w^(j-1))*R(j);
    end
end
end


