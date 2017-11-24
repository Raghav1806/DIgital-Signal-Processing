% while analysing output, note that output shall be interpreted in the form:
% (For 8-point FFT_DIF)
% 0, 4, 2, 6, 1, 5, 3, 7
% and input is of the form:
% 0, 1, 2, 3, 4, 5, 6, 7
function[x] = fft_dif(x)
n = length(x);
w = exp(-(sqrt(-1)*2*pi)/n);
if(n == 1)
    return;
else
    L = x(1:n/2);
    R = x((n/2)+1:n);
    for i = 1:n/2
        x(i) = L(i) + R(i);
    end
    for j = 1:n/2
        x(j+n/2) = (L(j)-R(j))*(w^(j-1));
    end
    x(1:n/2) = fft_dif(x(1:n/2));
    x((n/2)+1:n) = fft_dif(x((n/2)+1:n));
end
end

