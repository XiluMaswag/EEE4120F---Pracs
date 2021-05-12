%% shifted signals correlations
function [sig_1, sig_2] = shifty(nEnd, freq, shift_v)
  sig_1 = [];
  sig_2 = [];
  w0 = 2*pi*freq;
  n = linspace(-5, 5, nEnd);
  
  count = 1;
  for element = n
    sig_1(count) = sin(w0*element)
    sig_2(count) = sin(w0*element)
    count = count + 1 
  endfor
  
end  
