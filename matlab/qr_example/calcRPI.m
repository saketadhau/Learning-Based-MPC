function [F_rpi,h_rpi] = calcRPI(F_mpi,h_mpi, F_d, h_d)
% Calculation of a Robustly Positive Invariant set
[~, h_ttube] = termTube(F_mpi, h_mpi, F_d, h_d);  % (R_N x {0}) set calculation
F_rpi = F_mpi;
% Subtracting (R_N x {0}) from the MPI (maximal positive invariant) set
h_rpi = h_mpi-h_ttube;
end
