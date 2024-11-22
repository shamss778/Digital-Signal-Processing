% Paramètres
N = 10000;          % Nombre d'échantillons
P = 100;            % Valeur de P pour l'autocorrélation
sigma_v = sqrt(0.01);  % Écart-type du bruit
mu_v = 0;           % Moyenne du bruit
% Génération du bruit gaussien N(0, 0.01)
v = sigma_v * randn(1, N) + mu_v;
% Calcul de l'autocorrélation symétrique avec xcorr
r_v = xcorr(v, P, 'biased');
% Affichage de l'autocorrélation
figure;
stem(-P:P, r_v);
xlabel('Décalage k');
ylabel('Autocorrélation R_v(k)');
title('Autocorrélation symétrique du bruit gaussien N(0, 0.01)');