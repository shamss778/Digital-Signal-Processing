clear all;
close all;

Nrea_vec=[10,100,1000]; N = 10000; n_vec=1:N; w = 0.05 * pi;
colors = {'r', 'g', 'b'};
hold on;

for i=1:length(Nrea_vec),
    Nrea = Nrea_vec(i);
    Dmat=[]; 
    for j=1:Nrea,
        phi_vec = 2*pi*rand(1,N);
        d_vec = sin(n_vec * w + phi_vec);
        Dmat = [Dmat; d_vec];
    end
    moy_vec = mean(Dmat);
    histogram(moy_vec,100, 'FaceColor', colors{i});
end;

title('Histogrammes superposés pour Nrea = 10, 100, et 1000');
xlabel('Valeur moyenne');
ylabel('Fréquence');
legend('Nrea = 10', 'Nrea = 100', 'Nrea = 1000');
hold off;




