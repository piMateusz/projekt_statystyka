%% Generowanie rozk�ad�w 

% Ka�dy obraz osobno

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

% Dla wszystkich zdj�� ��cznie

histogram(iso6400) %iso6400 -> wektor sk�adaj�cy si� z 10 wektor�w zdj��
title('ISO6400 ��cznie')

histogram(iso12800) %iso12800 -> analogiczny wektor
title('ISO12800 ��cznie')