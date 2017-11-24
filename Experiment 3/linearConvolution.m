function[] = linearConvolution()
clc;
clear all;
x = [-2 0 -1 3];
y = [5 6 7 2];
z = zeros(4, 7);
for i = 1:4
    for j = 4:-1:1
        z(i, i+j-1) = x(1, j)*y(1, i);
    end
end
c = zeros(1, 7);
for j = 1:4
    c = c + z(j, :);
end
c';
t = 1:7;
stem(t, c);
end

