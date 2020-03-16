%% Stworzenie wykresów 3d poszczególnych obrazków

for i = 1:10
    figure(i)
    matrix = reshape(iso6400(i,:), [100 100]);
    surf(matrix)
    colormap('gray')
    title(strcat('ISO6400-num', int2str(i)))
    xlabel('wspolrzedna x piksela')
    ylabel('wspolrzedna y piksela')
    zlabel('odcien')
    axis([0 100 0 100 0 65535])
end

for i = 1:10
    figure(i+10)
    matrix = reshape(iso12800(i,:), [100 100]);
    surf(matrix)
    colormap('gray')
    title(strcat('ISO12800-num', int2str(i)))
    xlabel('wspolrzedna x piksela')
    ylabel('wspolrzedna y piksela')
    zlabel('odcien')
    axis([0 100 0 100 0 65535])
end