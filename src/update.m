function [ list ] = update( list, dest, from )

if from == dest
    return;
end

tmp = list(from);

for i=from:-1:dest+1    
    list(i) = list(i-1);
end

list(dest) = tmp;

end

