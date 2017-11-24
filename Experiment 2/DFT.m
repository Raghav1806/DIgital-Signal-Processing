function[] = DFT()
clc;
clear all;
N = input('Enter the points of DFT to be calculated: ');

% x can be any function, whose DFT is to be calculated
x = ones(7, 1);
L = length(x);

% adding padding to input signal x
x(L+1:N, 1) = 0;

% for making the DFT symmetrical
for k = 1:L
    x(k) = x(k)*((-1)^(k-1));
end

% Y stores the DFT values
Y = zeros(N, 1);
t = 0:N-1;

for i = 1:N
    for j = 1:N-1
        Y(i) = Y(i) + x(j)*exp((-1*sqrt(-1)*2*pi*(i-1)*(j-1))/N);
    end
end

% taking transpose of Y for plotting purposes
Y'

stem(t, abs(Y));
xlabel('t ----->');
ylabel('|DFT| ----->');
end

