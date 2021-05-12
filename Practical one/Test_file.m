% Test one
tic;
white = createwhiten(100);
runtime_1 = toc();
disp(strcat('It took: ', num2str(runtime_1*1000), 'ms to run -self function'));

%% Create .wav data file for correlation analysis
audiowrite('white.wav',white, 48000,'BitsPerSample',16);
[y,fs] = audioread('white.wav');

% Test two
tic;
white_noise = rand(48000*1000, 1)*2 -1;
runtime_2 = toc();
disp(strcat('It took: ', num2str(runtime_2*1000), 'ms to run -random function'));

%% Visual proof of white noise generation
hist(white, 100, 1);
x1 = xlabel('n');
y1 = ylabel('x[n]');
t1 = title('White noise by self function');
set(x1, 'fontsize', 10);
set(y1, 'fontsize', 10);
set(t1, 'fontsize', 10);

%hist(white_noise, 100, 1);
%hist(white, 100, 1);
%x2 = xlabel('n');
%y2 = ylabel('x[n]');
%t2 = title('White noise by rand()');
%t1 = title('White noise by rand function');
%set(x2, 'fontsize', 10);
%set(y2, 'fontsize', 10);
%set(t2, 'fontsize', 10);

% Test three
%speedUp = speedup(runtime_1,runtime_2)

% Test four
