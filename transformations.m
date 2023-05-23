function img = transformations(image, option)
    
    switch lower(option)
        case 'thresholding'
            %% 127 => c
            img = im2gray(im2uint8(image)) > 127;
        case 'log'
            %% 2 => c
            img = 2 * log(1 + im2double(image));
        case 'brightness'
            %% 128 => h
            img = im2uint8(double(im2uint8(image))  /  128);
        case 'histogram stretching'
            image = double(im2uint8(im2gray(image)));
            m = min(image(:));
            img = uint8((image - m) / (max(image(:)) - m) * 255);
        case 'histogram equalization'
            img = histeq(im2gray(image));
        case 'power law'
            %% 1 => c, 2 => Gama
            img = 1 * im2double(image) .^ 2;
        case 'negative'
            img = imcomplement(image);
        otherwise
            img = -1;
            disp('otherwise tranformation');
    end

end
