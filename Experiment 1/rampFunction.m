function[] = rampFunction()
clc;
clear all;
N = input('Enter the value of N: ');
x = 1:1:N;
stem(x, x);
xlabel('n ----->');
ylabel('Amplitude ----->');
end

