% QUESTION 3 : 

clc 
clear

% DATA : 
N = 1000; 
Q = 100;

%  SEED :
rng(0);

MU = 1;
SIGMA = 3;

% RANDOM NUMBERS (1, 3) 
x_q3 = SIGMA * randn(N, 1) + MU;

% PLOTTING : 
    % EMPYRICAL : 
hold on;
h_q3 = histogram(x_q3, Q, "Normalization","pdf");

    % THEORETICAL : 
y_q3 = makedist("Normal", "mu", MU, "sigma", SIGMA); 
plot_q3 = plot(y_q3, "PlotType","pdf");
title('GAUSSIAN (1, 3)');
xlabel('X');
ylabel('PROBABILITY');
hold off;