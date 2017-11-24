function[] = exponentialFunction()
clc;
clear all;
a = input('Enter the value of a: ');
N = input('Enter the value of N: ');
t = 0:0.1:N;
x = exp(-1*a*t);
stem(t, x);
xlabel('n ----->');
ylabel('Amplitude ----->');
end

