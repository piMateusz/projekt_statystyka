function image = load_image(source)
%load_image Wczytywanie obrazu do Matlaba
%   Funkcja przyjmuje lokalizacje obrazu (w naszym wypadku .tiff), podaje
%   wartoœci RGB, nastêpnie przedastawia obraz w skali szaroœci, ucina lewy
%   dolny fragment(100 na 100 pikseli) i tak¹ macierz zamienia na wektor.

    image_rgb = imread(source);
    image_gray = rgb2gray(image_rgb);
    image_matrix = image_gray(end-99:end, 1:100);
    image = reshape(image_matrix, [1, 10000]);
end
