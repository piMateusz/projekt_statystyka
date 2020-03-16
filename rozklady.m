%% Generowanie rozk³adów 

% Ka¿dy obraz osobno

for i = 1:10
    figure(i)
    histogram(iso6400_{i})
    title('ISO6400')
end

for i = 1:10
    figure(i)
    histogram(iso12800_{i})
    title('ISO12800')
end

% Dla wszystkich zdjêæ ³¹cznie

histogram(iso6400) %iso6400 -> wektor sk³adaj¹cy siê z 10 wektorów zdjêæ
title('ISO6400 ³¹cznie')

histogram(iso12800) %iso12800 -> analogiczny wektor
title('ISO12800 ³¹cznie')