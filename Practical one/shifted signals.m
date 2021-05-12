% Correlatio of shifed signals

n = 0:0.001:10000;
w = 4*pi/5

n1 = n(1:10001);
n2 = n(11:10011);

a = sin(w*n1);
b = sin(w*n2);

figure
subplot(211)
stem(n1, a);
xlabel('n1');
ylabel('a = sin(\pi/10*n1)');
title('Plot of two shifted sinusoids, A and B');
subplot(212)
stem(n2, b);
xlabel('n2');
ylabel('b = sin(\pi/10*n2)');
r = corr(a, b);
disp(r);