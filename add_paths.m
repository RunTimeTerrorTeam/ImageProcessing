function bool = add_paths(filepath, paths, mode)

    try
        file = fopen(filepath, mode, 'native', 'UTF-8');

        for i = 1:numel(paths)
            fprintf(file, '%s\n', native2unicode(strtrim(paths{i}), 'UTF-8'));
        end

        fclose(file);
        bool = true;
    catch
        bool = false;
    end

end
