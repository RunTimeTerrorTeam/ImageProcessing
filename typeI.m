function type = typeI(data, map)
    if ndims(data) == 3 && size(data, 3) == 3
        type = 'RGB';
        return
    end
    if islogical(data)
        type = 'Binary';
        return
    end
    if ismatrix(data)
        if nargin == 2 && size(map, 2) == 3 && isa(map, 'double')
            type = 'Indexed';
        else
            type = 'GrayScale';
        end
        return
    end
    type = 'Unknown';
end