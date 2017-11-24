function[] = deltaFunction()

clc;
clear all;
N = input('Enter the value of N (odd): ');
x = zeros(1, N);
x(1, 1+floor(N/2)) = 1;
if N%2 == 1:
    t = -floor(N/2):1:floor(N/2);
end
ylabel('Amplitude ----->');
xlabel('n ----->')
stem(t, x);

end

