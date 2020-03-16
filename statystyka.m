ISO_6400 = []
ISO_12800 = []
for x = 1:12
    tiff_file_6400 = 'ISO6400-' + str(x) + '.tiff'
    ISO_6400(x) = load_image(tiff_file_6400) 
    tiff_file_12800 = 'ISO12800-' + str(x) + '.tiff'
    ISO_12800(x) = load_image(tiff_file_12800) 
end
