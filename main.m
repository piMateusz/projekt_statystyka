%% Wczytanie obrazów

iso6400_1 = load_image('ISO6400/ISO6400-1.tiff');
iso6400_2 = load_image('ISO6400/ISO6400-2.tiff');
iso6400_3 = load_image('ISO6400/ISO6400-3.tiff');
iso6400_4 = load_image('ISO6400/ISO6400-4.tiff');
iso6400_5 = load_image('ISO6400/ISO6400-5.tiff');
iso6400_6 = load_image('ISO6400/ISO6400-6.tiff');
iso6400_7 = load_image('ISO6400/ISO6400-7.tiff');
iso6400_8 = load_image('ISO6400/ISO6400-8.tiff');
iso6400_9 = load_image('ISO6400/ISO6400-9.tiff');
iso6400_10 = load_image('ISO6400/ISO6400-10.tiff');

iso12800_1 = load_image('ISO12800/ISO12800_f2,8_2500-1.tiff');
iso12800_2 = load_image('ISO12800/ISO12800_f2,8_2500-2.tiff');
iso12800_3 = load_image('ISO12800/ISO12800_f2,8_2500-3.tiff');
iso12800_4 = load_image('ISO12800/ISO12800_f2,8_2500-4.tiff');
iso12800_5 = load_image('ISO12800/ISO12800_f2,8_2500-5.tiff');
iso12800_6 = load_image('ISO12800/ISO12800_f2,8_2500-6.tiff');
iso12800_7 = load_image('ISO12800/ISO12800_f2,8_2500-7.tiff');
iso12800_8 = load_image('ISO12800/ISO12800_f2,8_2500-8.tiff');
iso12800_9 = load_image('ISO12800/ISO12800_f2,8_2500-9.tiff');
iso12800_10 = load_image('ISO12800/ISO12800_f2,8_2500-10.tiff');

% Komórki zawieraj¹ce 10 wektorów, aby mo¿na siê by³o dowo³ywaæ do
% pojedynczych wektorów w pêtli for (np. ISO6400_{1})
iso6400_ = {iso6400_1, iso6400_2, iso6400_3, iso6400_4, iso6400_5,...
            iso6400_6, iso6400_7, iso6400_8, iso6400_9, iso6400_10};
       
iso12800_ = {iso12800_1, iso12800_2, iso12800_3, iso12800_4, iso12800_5,...
            iso12800_6, iso12800_7, iso12800_8, iso12800_9, iso12800_10};

        
% Wektor sk³adaj¹cy siê z 10 wektorów pojedynczych zdjêæ ISO6400
iso6400 = [iso6400_1, iso6400_2, iso6400_3, iso6400_4, iso6400_5,...
            iso6400_6, iso6400_7, iso6400_8, iso6400_9, iso6400_10];

        
% Wektor sk³adaj¹cy siê z 10 wektorów pojedynczych zdjêæ ISO6400
iso12800 = [iso12800_1, iso12800_2, iso12800_3, iso12800_4, iso12800_5,...
            iso12800_6, iso12800_7, iso12800_8, iso12800_9, iso12800_10];





