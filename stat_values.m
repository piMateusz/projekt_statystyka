%% Wartosci statystyczne

% Dla ISO64000

for i = 1:10000
    % tymczasowa tablica przechowująca wartości w danym pikselu z 10 obrazków
    temp = ones(1,10);  
                        
    for j = 1:10
        temp(j) = iso6400(j,i);
        std_for_each_iso6400(j) = std(iso6400(:,j));
        var_for_each_iso6400(j) = var(iso6400(:,j));
    end
    
    mean_vec6400(i) = mean(temp);
    min_vec6400(i) = min(temp);
    max_vec6400(i) = max(temp);
end

% Dla ISO12800

for i = 1:10000
    temp = ones(1,10);  % tymczasowy wektor pomocniczy
                        
    for j = 1:10
        temp(j) = iso12800(j,i);
        std_for_each_iso12800(j) = std(iso12800(:,j));
        var_for_each_iso12800(j) = var(iso12800(:,j));
    end
    
    mean_vec12800(i) = mean(temp);
    min_vec12800(i) = min(temp);
    max_vec12800(i) = max(temp);
end

% Porownanie wynikow

srednia_is6400 = mean(mean_vec6400)

srednia_is12800 = mean(mean_vec12800)

wart_min_iso6400 = min(min_vec6400)

wart_min_iso12800 = min(min_vec12800)

wart_max_iso6400 = max(max_vec6400)

wart_max_iso12800 = max(max_vec12800)

% odchylenie standardowe dla kazdego zdjecia

std_for_each_iso6400
std_for_each_iso12800

% WARIANCJA - srednia arytmetyczna kwadratow ochylen
 
var_for_each_iso6400
var_for_each_iso12800
