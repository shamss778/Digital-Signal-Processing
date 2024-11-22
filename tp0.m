% clear all;
% close all;
% 
% % Param�tres
% N = 10^4;          % Nombre d'�chantillons
% w = 0.05 * pi;     % Fr�quence angulaire
% n = 1:N;           % Indice des �chantillons
% phi = 2 * pi * rand(); % Phase al�atoire uniforme dans [0, 2pi]
% 
% % G�n�ration du signal
% d = sin(w * n + phi);
% 
% 
% variance = 0.1;      % Variance du bruit blanc
% 
% % G�n�ration du bruit blanc centr� gaussien
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

  