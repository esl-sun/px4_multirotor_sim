%% Multirotor Model

% Mass and Inertia
m = 4.5;
Ixx = 0.23;
Iyy = 0.235;
Izz = 0.328;

% Geometry
d = 0.49; % Distance from centre to motor
r_D = 0.0237; % Virtual yaw moment arm

% Propulsion:
tau_T = 0.07; % Motor time constant
virtual_controls_mat = [1 1 1 1; -1/sqrt(2) 1/sqrt(2) 1/sqrt(2) -1/sqrt(2); 1/sqrt(2) -1/sqrt(2) 1/sqrt(2) -1/sqrt(2); 1 1 -1 -1]; % Mixin matrix for X Quadrotor
max_total_T_kg = 4 * 3.2; % max thrust of quadrotor in kg (total)

% Aerodynamic:
C_D = [0.064; 0.067; 0.089].*0; % From Pierro - need to calculate in flight test
wind = [0; 0; 0]; % Wind constants