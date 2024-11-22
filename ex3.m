close all; clear all;

N=10000; Nrea=1000; 

% variance = 0.1; moy_v = 0;
% Vmat = sqrt(variance) * randn(Nrea, N) + moy_v;  
% hold on;
% 
% mov_v_vec = mean(Vmat);
% hist(mov_v_vec,100);
% legend('Moyenne');
% 
% figure;
% puissance_v_vec = mean(Vmat.^2);
% hist(puissance_v_vec,100);
% legend('Puissance');

variance = 0.01; moy_v = 1/3;

Vmat = sqrt(variance) * randn(Nrea, N) + moy_v;  

hold on;

mov_v_vec = mean(Vmat);
hist(mov_v_vec,100);
legend('Moyenne');

figure;
puissance_v_vec = mean(Vmat.^2);
hist(puissance_v_vec,100);
legend('Puissance');