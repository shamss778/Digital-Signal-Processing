clear all;
close all;

Nrea=1000; N = 10000; n_vec=1:N; w = 0.05 * pi;
hold on;

Dmat=[]; 
for j=1:Nrea,
    phi_vec = (pi/4)*rand(1,N);
    d_vec = sin(n_vec * w + phi_vec);
    Dmat = [Dmat; d_vec];
end
moy = mean(Dmat);
histogram(moy,100);
title('Moyenne Statistique');


figure;
puissance = mean(Dmat.^2);
histogram(puissance,100);
title('Puissance');

