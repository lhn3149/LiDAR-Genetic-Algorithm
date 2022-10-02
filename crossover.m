function child = crossover(parentA,parentB)
    child = zeros(1, length(parentA));
    midpoint = randi(length(parentA));
    i = 1;
    while (i < length(parentA)+1)
        if (i > midpoint)
            child(i) = parentA(i);
        else 
            child(i) = parentB(i);
        end
        i = i + 1;
    end
end