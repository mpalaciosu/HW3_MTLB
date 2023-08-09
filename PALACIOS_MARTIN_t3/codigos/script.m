% TAREA DISTRIBUCIONES LAUNCHER : 
    % Recomendado correc rodigo con step en vez de run

% QUESTION 1 :
run QUESTION1.m;

% QUESTION 2 : 
run QUESTION2.m;

% QUESTION 3 : 
run QUESTION3.m;

% QUESTION 4 :
run QUESTION4.m;

% QUESTION 5: 

clear
clc

% COLOR LEGEND :

    % MEDIA = BLUE
    % DESVIACION STD = RED
    % SKEWNESS = GREEN
    % KURTOSIS = black

% GENERATE x_q2 : 
rng(0);
N = 1000;
min = -5;
max = 7;
x_q1 = rand(N,1);
x_q2 = min + x_q1 * (max - min);

Q5FUNCTION_q2(N, x_q2);

% CLEAN WORKSPACE :
clear
clc

% GENERATE x_q3 : 
rng(0);
MU = 1;
SIGMA = 3;
N = 10000;
x_q3 = SIGMA * randn(N, 1) + MU;

% CALL FUNCTION : 
Q5FUNCTION_q3(N, x_q3)

% LAST PART:

clc 
clear

N = 800; 
MU = 1;
SIGMA = 3;
rng(0);

% GENERATE RANDOM VARIABLE : 
x_q1 = rand(N,1);
x_q4 = MU + SIGMA * tan(pi * (x_q1 - 0.5));

% CALL FUNCTION : 
Q5FUNCTION_q4(N, x_q4)