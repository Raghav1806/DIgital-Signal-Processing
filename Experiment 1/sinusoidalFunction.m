function[] = sinusoidalFunction()
clc;
clear all;
N = input('Enter the number of cycles of sine: ');
t = 0:0.01:N;
x = sin(2*pi*t);
stem(t, x);
xlabel('n ----->');
ylabel('Amplitude ----->');
end

