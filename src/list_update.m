function [ ] = list_update( list_size, request_size, iteration, random_type )

list = [];
request = [];

% random permutation
list = randperm(list_size);

for it=1:iteration

    for i=1:request_size
        if strcmp(random_type,'uniform')
            request(i) = randi(list_size, 1);              
        elseif strcmp(random_type,'normal')
            request(i) = geom_rand(list_size); 
        else
            disp('Wronk parameter');
            return;
        end
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

disp('MTF');
fprintf(' - min: %d \n', min(mtf_count));
fprintf(' - max: %d \n', max(mtf_count));
fprintf(' - mean: %d \n', mean(mtf_count));
disp(' ');

disp('Transpose');
fprintf(' - min: %d \n', min(transpose_count));
fprintf(' - max: %d \n', max(transpose_count));
fprintf(' - mean: %d \n', mean(transpose_count));
disp(' ');

disp('Transpose2');
fprintf(' - min: %d \n', min(transpose2_count));
fprintf(' - max: %d \n', max(transpose2_count));
fprintf(' - mean: %d \n', mean(transpose2_count));
disp(' ');

disp('FC');
fprintf(' - min: %d \n', min(fc_count));
fprintf(' - max: %d \n', max(fc_count));
fprintf(' - mean: %d \n', mean(fc_count));


end

