function paths = get_paths(filepath)
        paths = {};

        file = fopen(filepath, 'r', 'native', 'UTF-8');

        while true
            path =fgetl(file);

            if path == -1
                break
            end
            
            path =  strtrim(path);
            
            if ~isempty(path)
                paths{end + 1} = path; 
            end
        end

        fclose(file);

end
