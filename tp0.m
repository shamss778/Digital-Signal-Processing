% clear all;
% close all;
% 
% % Paramètres
% N = 10^4;          % Nombre d'échantillons
% w = 0.05 * pi;     % Fréquence angulaire
% n = 1:N;           % Indice des échantillons
% phi = 2 * pi * rand(); % Phase aléatoire uniforme dans [0, 2pi]
% 
% % Génération du signal
% d = sin(w * n + phi);
% 
% 
% variance = 0.1;      % Variance du bruit blanc
% 
% % Génération du bruit blanc centré gaussien
% v = sqrt(variance) * randn(1, N);  % Bruit blanc avec variance 0.1


Nrea=1000;
N = 10000;
Dmat=[];
n_vec=1:N;
w = 0.05 * pi;
n_vec = 1:N;

for i=1:Nrea,
    phi_vec = 2*pi*rand(1,N);
    d_vec = sin(n_vec * w + phi_vec);
    Dmat = [Dmat; d_vec];
end;


moy_vec = mean(Dmat);
%VDmat = mean(Dmat*Dmat) - MDmat*MDmat;
%mean(MDmat);
plot(moy_vec);

a = mean(moy_vec);

  