function outcome = createwhiten(n)
  outcome = zeros(n*48000, 1);
  for element = [1:(n*48000)]
    outcome(element) = rand()*2-1;
  endfor
endfunction