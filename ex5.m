% Param�tres
N = 10000;          % Nombre d'�chantillons
P = 100;            % Valeur de P pour l'autocorr�lation
sigma_v = sqrt(0.01);  % �cart-type du bruit
mu_v = 0;           % Moyenne du bruit
% G�n�ration du bruit gaussien N(0, 0.01)
v = sigma_v * randn(1, N) + mu_v;
% Calcul de l'autocorr�lation sym�trique avec xcorr
r_v = xcorr(v, P, 'biased');
% Affichage de l'autocorr�lation
figure;
stem(-P:P, r_v);
xlabel('D�calage k');
ylabel('Autocorr�lation R_v(k)');
title('Autocorr�lation sym�trique du bruit gaussien N(0, 0.01)');