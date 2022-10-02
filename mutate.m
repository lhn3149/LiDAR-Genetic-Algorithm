function mutant = mutate(child, mutationRate, wl)
    i = 1;
    mutant = child;
    while (i < length(child)+1)
        if (rand(1) < mutationRate)
            mutant(i) = mutant(i) + wl*randi([-1 1]);
        end 
        i = i + 1;
    end

end