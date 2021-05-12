%% Correlation experiment
%% Xiluva maswanganye
%% May 2021

signal = audioread('white.wav');
sig_corr = signal

% Test one - general correlation
tic;
r1 = mycorr(signal, sig_corr, 10000);
runtime_r1 = toc();
tic;
r2 = corr(signal, sig_corr);
runtime_r2 = toc();
disp(r2 - r1);
disp(strcat('It took: ', num2str(runtime_r1*1000), 'ms to run -mycorr function'));
disp(strcat('It took: ', num2str(runtime_r2*1000), 'ms to run -corr function'));

% Test two correlation with fudge
sig_corr(1) = 2;
sig_corr(5) = -4;
tic;
r_1 = mycorr(signal, sig_corr, 10000);
runtime_r_1 = toc();
tic;
r_2 = corr(signal, sig_corr);
runtime_r_2 = toc();
disp(r_2 - r_1);
disp(strcat('It took: ', num2str(runtime_r_1*1000), 'ms to run -mycorr function'));
disp(strcat('It took: ', num2str(runtime_r_2*1000), 'ms to run -corr function'));

% test three -  correlation with rand function
w_sig = rand(1,10000);
w_signal = w_sig;
tic;
r01 = mycorr(w_sig, w_signal, 10000);
runtime_r01 = toc();

tic;
r02 = corr(w_sig, w_signal);
runtime_r02 = toc();
disp(r02 - r01);
disp(strcat('It took: ', num2str(runtime_r01*1000), 'ms to run -mycorr function'));
disp(strcat('It took: ', num2str(runtime_r02*1000), 'ms to run -corr function'));
