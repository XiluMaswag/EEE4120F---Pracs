%% Correlation experiment
%% Xiluva maswanganye
%% May 2021

signal = audioread('white_noise_sound.wav');
sig_corr = signal

r1 = mycorr(signal, sig_corr, 100);
r2 = corr(signal, sig_corr, 100);

disp(r2 - r1);
sig_corr(1) = 2;
sig_corr(5) = -4;

