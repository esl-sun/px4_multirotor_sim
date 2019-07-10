%% UAV Model

% Parameters of model
model_parameters;

% Total inertia
I = [Ixx 0 0 ; 0 Iyy 0 ; 0 0 Izz];

% Propulsion
mixin_mat = virtual_controls_mat'; % mixin matrix

max_total_T = max_total_T_kg * g; % maximum total thrust
max_T = max_total_T / 4; % maximum thrust per motor

hover_perc = m*g / max_total_T; % hover percentage of full throttle
hover_total_T = max_total_T * hover_perc; % total hover thrust
hover_T = hover_total_T / 4; % hover thrust per motor