function Q5FUNCTION_q3 (N, x_q3)

sample = 1:N;

% INICIALIZE VECTORS : 
mu = zeros(N, 1);
sigma = zeros(N,1);
skew = zeros(N,1);
kurt = zeros(N,1);

% GENERATE DATA
for i = sample 

    S_1N = sum(x_q3(1:i));
    S_2N = sum(x_q3(1:i) .^ 2);
    S_3N = sum(x_q3(1:i) .^ 3);
    S_4N = sum(x_q3(1:i) .^ 4);
   
    % MEDIA :
    mu(i) = S_1N / i;
    
    % DESVIACION STD : 
    sigma(i) = sqrt ((S_2N / i) - mu(i) .^ 2);
    
    % SKEWNESS : 
    skew(i) = ((S_3N / i) - 3 * (mu(i)) * (S_2N / i) + 2 * (mu(i)) .^ 3) / (sigma(i)) .^ 3;
    
    % KURTOSIS :
    kurt(i) = ((S_4N / i) - 4 * (mu(i)) * (S_3N / i) + 6 * (mu(i)) .^ 2 * (S_2N / i) - 3 * (mu(i)) .^ 4) / (sigma(i)) .^ 4;


end

% PLOTTING : 
hold on;

plot (sample, mu, 'Color', 'blue', 'DisplayName', 'MEDIA');
plot (sample, sigma, 'Color', 'red', 'DisplayName', 'DESVIACION STD');
plot (sample, skew, 'Color', 'green', 'DisplayName', 'SKEWNESS');
plot (sample, kurt, 'Color', 'black', 'DisplayName', 'KURTOSIS');

title('ESTIMATES QUESTION 5 - DATA QUESTION 3');
xlabel('N');
ylabel('MOMENTOS');
legend('Location', 'best');

hold off;

end