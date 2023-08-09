% QUESTION 1 : 

clc 
clear

% DATA : 
N = 1000000; 
Q = 100;

%  SEED :
rng(0);

% QUESTION 1 : 
x_q1 = rand(N,1);

hold on; 
h_q1 = histogram(x_q1, Q, "Normalization","probability");
title('STANDARD UNIFORM DISTRIBUTION');
xlabel('x');
ylabel('PROBABILITY %');
hold off;