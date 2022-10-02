function N_x= Aperiodic_set(N)
    N_x = randi([floor(N/2) 2*N], 1, N);
    for i = 1:length(N_x) -1 
        N_x(i) = sum(N_x(i+1:end), 'all');
    end
    N_x(end) = 0 ;
end