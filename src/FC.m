function [ count ] = FC( list, request )

[N request_size] = size(request);
[N list_size] = size(list);
frequency = zeros(1, list_size);
count = 0;

for request_index=1:request_size
    for list_index=1:list_size
        count = count + 1;
        if list(list_index) == request(request_index)            
            frequency(list(list_index)) = frequency(list(list_index)) + 1;
            dest_index = FC_helper(list, frequency, frequency(list(list_index)), list_index);            
            if dest_index ~= 1
                list = update(list, dest_index, list_index);
            end            
            break;
        end
    end        
end

end

