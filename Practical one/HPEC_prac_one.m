%% Createwhiten function
white = rand(48000*10,1)*-1;
audiowrite('w.wav', white, 48000, 'BitsPerSample', 16);
[y, fs] = audioread('w.wav', 16);
