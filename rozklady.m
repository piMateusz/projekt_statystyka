%% Generowanie rozk³adów 

% rozk³ad Ka¿dego obrazu iso6400 osobno

for i = 1:10
    figure(i)
    histogram(iso6400(i, :))
    xlabel('odcien')
    ylabel('ilosc wystapien')
    title(strcat('ISO6400-num', int2str(i)))
end

% rozk³ad Ka¿dego obrazu iso12800 osobno

for i = 1:10
    figure(i+10)
    histogram(iso12800(i, :))
    xlabel('odcien')
    ylabel('ilosc wystapien')
    title(strcat('ISO12800-num', int2str(i)))
end

% rozk³ad wszystkich zdjêæ iso6400 ³¹cznie

figure(21)
histogram(iso6400)
xlabel('odcien')
ylabel('ilosc wystapien')
title('ISO6400 ³¹cznie')

% rozk³ad wszystkich zdjêæ iso12800 ³¹cznie

figure(22)
histogram(iso12800)
xlabel('odcien')
ylabel('ilosc wystapien')
title('ISO12800 ³¹cznie')