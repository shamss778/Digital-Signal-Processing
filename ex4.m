
clear all;
close all;
% Paramètres
N = 10000;       % Nombre d'échantillons
P1 = 5;          % Valeur de P = 5
P2 = 10;         % Valeur de P = 10
Nrea = 1000;     % Nombre de réalisations
w = 0.05 * pi;   % Fréquence
n_vec = 1:N;     % Vecteur des échantillons
% Génération du signal avec phi ~ U([0, 2*pi])
Dmat = [];
for j = 1:Nrea
   phi_vec = 2 * pi * rand(1, N);  % phi ~ U([0, 2*pi])
   d_vec = sin(n_vec * w + phi_vec); % Signal sinusoidal avec phase aléatoire
   Dmat = [Dmat; d_vec];            % Stocker chaque réalisation dans Dmat
end
% Autocorrélation empirique
P_values = [P1, P2];
for i = 1:length(P_values)
   P = P_values(i);
   r_empirique = zeros(1, P); % Initialisation de r_empirique
   for k = 0:P-1
       % Pour chaque k, calculez l'autocorrélation empirique
       % Assurez-vous que les indices sont valides pour chaque k
       if k == 0
           r_empirique(k+1) = mean(mean(Dmat.^2)); % Cas k=0, moyenne des carrés
       else
           r_empirique(k+1) = mean(mean(Dmat(:, 1:N-k) .* Dmat(:, k+1:N))); % Moyenne sur toutes les réalisations
       end
   end
  
   % Utilisation de la fonction xcorr pour chaque réalisation séparément
   r_xcorr = zeros(1, P);
   for j = 1:Nrea
       r_xcorr_temp = xcorr(Dmat(j, :), P-1, 'biased'); % Autocorrélation pour une réalisation
       r_xcorr = r_xcorr + r_xcorr_temp(P:end); % Accumuler les valeurs de xcorr
   end
   r_xcorr = r_xcorr / Nrea;  % Moyenne sur toutes les réalisations
   
   % Comparaison graphique dans une seule figure
   figure;
   hold on;
   plot(0:P-1, r_empirique, 'b', 'DisplayName', 'Moyenne empirique');
   title(['Comparaison de l''autocorrélation pour P = ', num2str(P)]);
   xlabel('k');
   ylabel('Autocorrélation');
   legend;
   hold off;
end
