function [ output_args ] = list_update( list_size, request_size, iteration )

list = [];
request = [];

% random permutation
list = randperm(list_size);

for it=1:iteration

    for i=1:request_size,
       request(i) = randi(list_size, 1); 
    end

    mtf_list = list;
    mtf_count(it) = MTF(mtf_list, request);

    transpose_list = list;
    transpose_count(it) = Transpose(transpose_list, request);

    transpose2_list = list;
    transpose2_count(it) = Transpose2(transpose2_list, request);

    fc_list = list;
    fc_count(it) = FC(fc_list, request);

end

end

