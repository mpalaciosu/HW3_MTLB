% QUESTION 2 :

clc 
clear

% DATA : 
N = 1000; 
Q = 100;

%  SEED :
rng(0);

min = -5;
max = 7;

x_q1 = rand(N,1);
x_q2 = min + x_q1 * (max-min);

hold on;
h_q2 = histogram(x_q2, Q,"Normalization","probability");
title('CUSTOM UNIFORM DISTRIBUTION');
xlabel('x');
ylabel('PROBABILITY');
hold off;