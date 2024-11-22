% Param�tres
N = 10000;       % Nombre d'�chantillons
w0 = 0.05 * pi;  % Fr�quence
phi = 2 * pi * rand();  % Phase al�atoire phi ~ U([0, 2*pi])
n_vec = 1:N;     % Vecteur des indices d'�chantillons
% G�n�ration du signal d(n) = sin(nw0 + phi)
d = sin(n_vec * w0 + phi);
% Calcul de la moyenne des �chantillons
m_ech = zeros(1, N);
for n = 1:N
   m_ech(n) = mean(d(1:n));  % Moyenne des �chantillons pour n = 1, ..., N
end
% Affichage de la moyenne d'�chantillons
figure;
plot(n_vec, m_ech, 'LineWidth', 1.5);
xlabel('n');
ylabel('Moyenne d''�chantillons m_{\text{ech}}(n)');
title('Convergence de la moyenne d''�chantillons du signal d(n)');
grid on;

% �tape 2 : Calcul et affichage de l'EQM
eqm = zeros(1, N);  % Erreur quadratique moyenne (EQM)
for n = 1:N
   eqm(n) = mean((m_ech(1:n) - 0).^2);  % Approximation de l'EQM
end
% Affichage de l'EQM
figure;
plot(n_vec, eqm, 'LineWidth', 1.5);
xlabel('n');
ylabel('Erreur quadratique moyenne (EQM)');
title('Convergence de l''EQM');
grid on;