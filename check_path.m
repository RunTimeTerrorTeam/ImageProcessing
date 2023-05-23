function bool = check_path(folder, filename)

    if ~exist(folder, 'dir')
        mkdir(folder);
    end

    fullpath = fullfile(folder, filename);

    if ~exist(fullpath, 'file')
        fclose(fopen(fullpath, 'w'));
        bool = false;
    else
        bool = true;
    end

end
