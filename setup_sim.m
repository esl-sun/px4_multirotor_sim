%% Simulation

% Duration of simulation
sim_time = 20;

% Step inputs
pos_e_step = [2;3;-4];
yaw_step = 0;

%% Setup
% Add subfolders to path
addpath(genpath('setup'));
setup_constants;

%% Run simulation
sim('px4_multirotor_sim');