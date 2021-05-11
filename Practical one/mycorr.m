%% General correlation function set up from formula
%% Xiluva Maswanganye (MSWXIL001)
%% May 2021

function mycorr = Correlator(X,Y, n)
  mean_X = mean(X);
  mean_Y = mean(Y);
  
  %Numerators:
  num_X = 0;
  num_Y = 0;
  resultant_num = 0;
  
  %Denominators
  den_X = 0;
  den_Y = 0;
  resultant_den = 0;
  
  for element = 1:n
    num_X = X(element) - mean_X;
    num_Y = Y(element) - mean_Y;
    resultant_num = resultant_num + (num_X*num_Y);
    
    den_X = sqrt((X(element) - mean_X)^2);
    den_Y = sqrt((Y(element) - mean_Y)^2);
    resultant_den = resultant_den + (den_X*den_Y);
  endfor

  mycorr = resultant_num/resultant_den;
 endfunction