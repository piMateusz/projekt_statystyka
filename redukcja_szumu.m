%% Usuwanie szumu 

% Korzystaj¹c z RMS

% ISO6400
rms_vec6400 = ones(1,10000); % wektor przechowuj¹cy wartoœci œrednie danego piksela

for i = 1:10000
    % tymczasowa tablica przechowuj¹ca wartoœci w danym pikselu z 10 obrazków
    temp = ones(1,10);  
                        
    for n = 1:10
        temp(n) = iso6400(n,i);
    end
    
    rms_vec6400(i) = rms(temp);
end

rms_matrix6400 = uint16(reshape(rms_vec6400, [100 100]));
figure(1)
imshow(rms_matrix6400)


%ISO12800
rms_vec12800 = ones(1,10000);
for i = 1:10000
    temp = ones(1,10);            
    for n = 1:10
        temp(n) = iso12800(n,i);
    end
    rms_vec12800(i) = rms(temp);
end
rms_matrix12800 = uint16(reshape(rms_vec12800, [100 100]));
figure(2)
imshow(rms_matrix12800)

%% Wykresy 3d zredukowanego szumu

figure(3)
surf(rms_matrix6400)
colormap('gray')
title('ISO6400 RMS')
xlabel('wspolrzedna x piksela')
ylabel('wspolrzedna y piksela')
zlabel('odcien')
axis([0 100 0 100 0 65535])

figure(4)
surf(rms_matrix12800)
colormap('gray')
title('ISO12800 RMS')
xlabel('wspolrzedna x piksela')
ylabel('wspolrzedna y piksela')
zlabel('odcien')
axis([0 100 0 100 0 65535])

