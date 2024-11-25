N = 100;% Nombre de trames � r�cup�rer
Lt2 = 256; 
% Initialiser la matrice des spectres
spec_mat = zeros(Lt2, N);
% Calculer la FFT de chaque trame et stocker les r�sultats dans spec_mat
for i = 1:N
   spec_mat(:, i) = fft(Xmat2(:, i));  % FFT sur chaque trame
end
% Prendre seulement la moiti� des fr�quences (sym�trie de la FFT)
spec_mat = spec_mat(1:Lt2/2, :);
% Fr�quences associ�es (axe fr�quentiel)
frequencies = (0:Lt2/2-1) * Fs / Lt2;
% Afficher le spectre moyen des trames
figure;
plot(frequencies, abs(mean(spec_mat, 2)));
xlabel('Fr�quence (Hz)');
ylabel('Amplitude');
title('Spectre moyen des trames pour L_t = 256');
grid on;
