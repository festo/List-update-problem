function [ count ] = Transpose( list, request )

[N request_size] = size(request);
[N list_size] = size(list);
count = 0;

for request_index=1:request_size
    for list_index=1:list_size
        count = count + 1;
        if list(list_index) == request(request_index)
            if list_index ~= 1
                list = update(list, list_index-1, list_index);
            end
            break;
        end
    end        
end

end

