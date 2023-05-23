function image = im2gray(data, map)

    if nargin == 2
        t = typeI(data, map);
    else
        t = typeI(data);
    end

    switch t
        case 'RGB'
            image = rgb2gray(data);
        case 'GrayScale'
            image = data;
        case 'Indexed'
            image = ind2gray(data, map);
        case 'Binary'
            image = 255 * data;
        otherwise
            image = -1;
    end

end
