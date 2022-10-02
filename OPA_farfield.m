function [I_ff_norm, Angle_ff] = OPA_farfield(N, N_x, D, k, phi)
%% Output: 
%   2D Intensity
%   far field I vs x
%   determining grating lobes
    xmax = 2*D;
    X_ff = -xmax:1:xmax;
    Angle_ff = rad2deg(atan(X_ff/D)); 
    E_ff = zeros(size(X_ff));
    for j = 1:N
        E_ff = E_ff + exp(-1i*(k*sqrt((X_ff-N_x(j)).^2 + D^2) + j*phi))/N;
    end
    I_ff = abs(E_ff).^2;
    I_ff_norm = I_ff/max(I_ff);

end