whiten = createwhiten(1000);
%size(whiten);
audiowrite(whiten, 48000, 16, 'white_noise_sound.wav ');
%hist(whiten, 100, 1)

tic;
white = rand(48000*1000, 1)*2 -1;
runtime = toc();
disp(strcat("It took: ",num2str(runtime*1000),"ms to run"));

tic;
whiten = createwhiten(1000);
rantime = toc();
disp(strcat("It took: ",num2str(rantime*1000),"ms to run"));
