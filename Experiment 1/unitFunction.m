function[] = unitFunction()
clc;
clear all;
N = input('Enter the value of N: ');
x = ones(1, N);
t = 1:1:N;
stem(t, x);
ylabel('Amplitude ----->');
xlabel('n ----->');
end

