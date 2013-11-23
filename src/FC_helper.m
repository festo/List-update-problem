function [ list_index ] = FC_helper( list, frequency, fc, fc_index )

[N list_size] = size(list);
for list_index=1:fc_index
    if frequency(list(list_index)) < fc 
        break;
    end
end

end

