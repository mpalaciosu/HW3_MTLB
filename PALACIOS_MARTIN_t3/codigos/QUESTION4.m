% QUESTION 4 : 
clc 
clear
% DATA : Edite el numero de Q para que el grafico fuera mas estetico
       % Para tener 100 bins deberiamos poner Q = 100
N = 1000; 
Q = 2500;
MU = 1;
SIGMA = 3;

% SEED :
rng(0);

% GENERATE RANDOM VARIABLE
x_q1 = rand(N,1);

x_q4 = MU + SIGMA * tan(pi * (x_q1 - 0.5));

% PLOT : 

hold on;
histogram(x_q4,'Normalization', 'pdf', 'NumBins', Q); 

% CAUCHY
y_q4 = 1./(pi * SIGMA * (1 + ((x_q4 - MU) ./ SIGMA) .^ 2)); 
pd_q4 = makedist('tLocationScale','mu', MU,'sigma', SIGMA,'nu', 1);
plot(pd_q4 ,"PlotType","pdf")
xlim([-150, 150]);
title("CAUCHY DISTRIBUTION (1, 3)");
xlabel('X');
ylabel('PROBABILITY');
hold off;