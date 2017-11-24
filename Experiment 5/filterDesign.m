function[] = filterDesign()
clc;
clear all;
N = 25;
n = -(N-1)/2 : (N-1)/2;

t = -15:15;

for i = -15:15
    % unit window
    w1(1, i+15+1) = 1;
    % triangular window
    tw(1, i+15+1) = 1-((2*abs(i))/(N-1));
    % hanning window
    hw(1, i+15+1) = 0.5 + 0.5*cos((2*pi*i)/(N-1));
    % hamming window
    hmw(1, i+15+1) = 0.54 + 0.46*cos((2*pi*i)/(N-1));
    % blackmann window
    bw(1, i+15+1) = 0.42 + 0.5*cos((2*pi*i)/(N-1)) + 0.08*cos((4*pi*i)/(N-1));
end

subplot(5, 2, 2);
stem(t, w1);

subplot(5, 2, 4);
stem(t, tw);

subplot(5, 2, 6);
stem(t, hw);

subplot(5, 2, 8);
stem(t, hmw);

subplot(5, 2, 10);
stem(t, bw);

% vector on which window shall be applied
a = zeros(1, 31);
a(1:2:end) = 1;
a(2:2:end) = -1;

unitWindow = -fft(a.*w1, N);
subplot(5, 2, 1);
stem(n, abs(unitWindow));

triangularWindow = -fft(a.*tw, N);
subplot(5, 2, 3);
stem(n, abs(triangularWindow));

hanningWindow = -fft(a.*hw, N);
subplot(5, 2, 5);
stem(n, abs(hanningWindow));

hammingWindow = -fft(a.*hmw, N);
subplot(5, 2, 7);
stem(n, abs(hammingWindow));

blackmannWindow = -fft(a.*bw, N);
subplot(5, 2, 9);
stem(n, abs(blackmannWindow));

end

