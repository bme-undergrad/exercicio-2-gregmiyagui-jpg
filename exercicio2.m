function [blendA, blendB] = exercicio2(NG)

% NG: numero do grupo

% nao alterar: inicio
es = 1;
imax = 20;
pkg load optim
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

f = [10 ;
     NG*2];

x0 = [1 , 1];

A = [-0.3 , -0.2;
     -0.2 , -0.25;
     -0.25 , -0.3];
b = [-15 ; 
     -10 ; 
     -12];

Aeq = [];
beq = [];

lb = [];
up = [20 , 50];

[x] = linprog(f , A , b , Aeq , beq , lb , up);

% mantenha essas duas linhas finais
blendA = x(1)
blendB = x(2)

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
