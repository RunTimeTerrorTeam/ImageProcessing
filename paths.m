function output = paths(option, paths)
    initialize_global;
    check_path(folder, filename);

    switch option
        case 'a'
            output = add_paths(fullfile(folder, filename), paths, 'a+');
        case 'g'
            output = get_paths(fullfile(folder, filename));
        case 'w'
            output = add_paths(fullfile(folder, filename), paths, 'w');
        otherwise
            output = -1;
    end

end
