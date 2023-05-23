function output = main_function(option, image, arg)
    switch lower(option)
        case 'edge detection'
            output = edge(im2gray(image), arg);
        case 'filters'
            output = filterI(image, arg);
        case 'noise'
            output = imnoise(im2uint8(image), arg);
        case 'transformations'
            output = transformations(image, arg);
        otherwise
            output = -1;
    end

end
