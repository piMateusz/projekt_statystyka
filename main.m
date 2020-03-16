%% Wczytanie obrazów
% Macierz sk³adaj¹ca siê z 10 wektorów (10 pojedynczych zdjêæ ISO6400)
iso6400 = ones(10, 10000);
%  Macierz sk³adaj¹ca siê z 10 wektorów (10 pojedynczych zdjêæ ISO12800)
iso12800 = ones(10, 10000);
for x = 1:10
    tiff_file_6400 = strcat('ISO6400/ISO6400-', int2str(x), '.tiff');
    iso6400(x, :) = load_image(tiff_file_6400);
    tiff_file_12800 = strcat('ISO12800/ISO12800_f2,8_2500-', int2str(x), '.tiff');
    iso12800(x, :) = load_image(tiff_file_12800);
end
