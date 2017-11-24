function[] = cosineFunction()
clc;
clear all;
N = input('Enter the number of cycles of cosine: ');
t = 0:0.01:N;
x = cos(2*pi*t);
stem(t, x);
xlabel('n ----->');
ylabel('Amplitude ----->');
end

