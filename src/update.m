function [ list ] = update( list, dest, from )

tmp = list(dest);
list(dest) = list(from);

for i=from:dest+2
    list(i) = list(i-1);
end

list(dest+1) = tmp;

end

