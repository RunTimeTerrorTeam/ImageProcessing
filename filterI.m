function img = filterI(image, options)

    switch lower(options)
        case 'median'
            switch ndims(image)
                case 2
                    img = medfilt2(image);
                case 3
                    img = medfilt3(image);
                otherwise
                    img = -1;
                    disp('otherwise filter');
            end
            return
        otherwise 
            H = fspecial(options);
    end

    img = imfilter(image, H);

end