[X,cmap] = imread('corn.tif');
% The indexed image X is a 415-by-312 array of type uint8. The colormap cmap is a 256-by-3 matrix of type double
% therefore there are 256 colors in the indexed image. Display the image.
imshow(X,cmap)

% Convert the indexed image to an RGB image. The result is a 415-by-312-by-3 array of type double.
RGB = ind2rgb(X,cmap);
% Check that values of the RGB image are in the range [0, 1].
disp(['Range of RGB image is [',num2str(min(RGB(:))),', ',num2str(max(RGB(:))),'].'])