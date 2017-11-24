function[] = circularConvolution()
clc;
clear all;
% x and h are user defined
x = [1; 2; 3; 4; 5; 6; 7; 8; 9; 10];
h = [1; 1; 1; 2; 2; 3; 4; -55; 6; 19];

n = length(x);
m = length(h);

% adding padding
if(n > m)
    h(m+1:n, 1) = 0;
    maxDimension = n;
else
    x(n+1:m, 1) = 0;
    maxDimension = m;
end

z = zeros(maxDimension, maxDimension);

% generating a 2D array for multiplication with other vector
for i = 1:n
    k = n;
    for j = 1:n
        if(i-j < 0)
            z(i, j) = h(k);
            k = k-1;
        else
            z(i, j) = h(i-j+1);
        end
    end
end
t = 1:maxDimension;
stem(t, (z*x)');
end

