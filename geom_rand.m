function [ rand_number ] = geom_rand( max )

r = randn(1);

rand_number = (((r + 5)/10)*(max-1))+1;

rand_number = round(rand_number);

end

