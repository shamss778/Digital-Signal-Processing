% Ouvrir le fichier audio
[x, Fs] = audioread('BREAKING NEWS.mp3');  % Remplacez par votre fichier
% Param�tres de segmentation
Lt = 1024;     % Longueur de chaque trame
Nt = 1000;     % Nombre de trames

% Extraire la partie du signal qui contient les Nt trames
vec_sig = x(1:Nt*Lt);  % Prendre Nt*Lt premiers �chantillons du signal

% Segmenter le signal en trames et stocker dans une matrice
Xmat = reshape(vec_sig, Lt, Nt);
