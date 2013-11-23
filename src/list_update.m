function [ output_args ] = list_update( list_size, request_size )

list = [];
request = [];

% random permutation
list = randperm(list_size);

for i=1:request_size,
   request(i) = randi(list_size, 1); 
end

mtf_list = list;
mtf_count = MTF(mtf_list, request);
mtf_list = [];

mtf_count

end

