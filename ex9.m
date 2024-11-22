clear all;
close all;
% Paramètres
N = 100;% Nombre de trames à récupérer
L1 = 1024; % Longueur de trame L1
L2 = 256;  % Longueur de trame L2 (4 fois plus de trames pour L2)
% Chargement du fichier audio
[x, Fs] = audioread('BREAKING NEWS.mp3');  % Remplacez par votre fichier
% Vérifier si le signal est assez long pour L1 et L2
if length(x) < N * L1
   error('Le signal est trop court pour L1 = 1024.');
end
if length(x) < N * L2 * 4 % Prendre en compte qu'il faut 4 fois plus de trames pour L2
   error('Le signal est trop court pour L2 = 256.');
end
% Extraction du signal segmenté pour les trames L1 = 1024 et L2 = 256
vec_sig1 = x(1:N * L1); % Signal pour L1
vec_sig2 = x(1:4 * N * L2); % Signal pour L2
% Segmenter le signal pour L1 = 1024
Xmat1 = reshape(vec_sig1, L1, N);
% Segmenter le signal pour L2 = 256 (4 fois plus de trames)
Xmat2 = reshape(vec_sig2, L2, 4 * N);
% Calcul des moyennes des trames
moyennes_trames1 = mean(Xmat1);
moyennes_trames2 = mean(Xmat2);
% Calcul des puissances des trames
puissances_trames1 = mean(Xmat1.^2);
puissances_trames2 = mean(Xmat2.^2);
% Répéter les résultats pour L1 = 1024, 4 fois pour une même trame
moyennes_trames1_repeated = kron(moyennes_trames1, ones(1, 4));
puissances_trames1_repeated = kron(puissances_trames1, ones(1, 4));
% Numéros de trames pour affichage (L2 aura 4 fois plus de trames)
num_trame = 1:N*4;
% Affichage des résultats
% Moyenne des trames
figure;
subplot(2, 1, 1);
plot(num_trame, moyennes_trames1_repeated, 'b');
hold on;
plot(num_trame, moyennes_trames2, 'r');
xlabel('Numéro de trame');
ylabel('Moyenne de la trame');
title('Moyennes des trames pour L1=1024 en bleu et L2=256 en rouge');
legend('L1 = 1024 (répété)', 'L2 = 256');
% Puissance des trames
subplot(2, 1, 2);
plot(num_trame, puissances_trames1_repeated, 'b');
hold on;
plot(num_trame, puissances_trames2, 'r');
xlabel('Numéro de trame');
ylabel('Puissance de la trame');
title('Puissances des trames pour L1=1024 en bleu et L2=256 en rouge');
legend('L1 = 1024 (répété)', 'L2 = 256');

