% Ouvrir le fichier audio
[x, Fs] = audioread('BREAKING NEWS.mp3');  % Remplacez par votre fichier
% Paramètres de segmentation
Lt = 1024;     % Longueur de chaque trame
Nt = 1000;     % Nombre de trames
% Extraire la partie du signal qui contient les Nt trames
vec_sig = x(1:Nt*Lt);  % Prendre Nt*Lt premiers échantillons du signal
% Segmenter le signal en trames et stocker dans une matrice
Xmat = reshape(vec_sig, Lt, Nt);
moyenne = zeros(1, Nt);   % Vecteur de moyenne pour chaque trame
puissance = zeros(1, Nt); % Vecteur de puissance pour chaque trame
% Calculer la moyenne et la puissance pour chaque trame
for n = 1:Nt
   moyenne(n) = mean(Xmat(:,n));  % Moyenne de la trame n
   puissance(n) = mean(Xmat(:,n).^2);  % Puissance de la trame n
end
% Afficher la moyenne de chaque trame
figure;
subplot(2,1,1);  % Première sous-figure
plot(1:Nt, moyenne, 'b');
title('Moyenne de chaque trame');
xlabel('Numéro de la trame');
ylabel('Moyenne');
% Afficher la puissance de chaque trame
subplot(2,1,2);  % Deuxième sous-figure
plot(1:Nt, puissance, 'r');
title('Puissance de chaque trame');
xlabel('Numéro de la trame');
ylabel('Puissance');