%% GRIFFIN Control Gains

% Control gains
controller_gains;

%% Body Rates

% Filter
body_rates_dterm_cutoff = MC_DTERM_CUTOFF;
[br_filt_num, br_filt_denom] = filter(body_rates_dterm_cutoff, sim_freq);

% *************************************************************************
% Pitch
% *************************************************************************

% Pitch Rate Gains
K_qp = MC_PITCHRATE_P;
K_qi = MC_PITCHRATE_I;
K_qd = MC_PITCHRATE_D;

% Pitch rate limit
q_max = MC_PITCHRATE_MAX * pi/180;

% Integrator limit
q_int_lim = MC_PR_INT_LIM;

% *************************************************************************
% Roll
% *************************************************************************

% Roll Rate
K_pp = MC_ROLLRATE_P;
K_pi = MC_ROLLRATE_I;
K_pd = MC_ROLLRATE_D;

% Roll rate limit
p_max = MC_ROLLRATE_MAX * pi/180;

% Integrator limit
p_int_lim = MC_RR_INT_LIM;

% *************************************************************************
% Yaw
% *************************************************************************

% Yaw Rate
K_rp = MC_YAWRATE_P;
K_ri = MC_YAWRATE_I;
K_rd = MC_YAWRATE_D;

% Yaw rate limit
r_max = MC_YAWRATE_MAX * pi/180;

% Integrator limit
r_int_lim = MC_YR_INT_LIM;

%% Attitude

max_tilt = MPC_TILTMAX_AIR;

% *************************************************************************
% Pitch
% *************************************************************************

% Pitch Angle Controller
K_theta = MC_PITCH_P;

% *************************************************************************
% Roll
% *************************************************************************

% Roll Angle Controller
K_phi = MC_ROLL_P;

% *************************************************************************
% Yaw
% *************************************************************************

% Yaw Angle Controller
K_psi = MC_YAW_P;

%% Thrust (Velocity outputs inertial thrust which is converted to an attitude)

thr_max = MPC_THR_MAX;
thr_min = MPC_THR_MIN;

%% Velocity

vel_dterm_cutoff = MPC_VELD_LP;

[vel_filt_num, vel_filt_denom] = filter(vel_dterm_cutoff, sim_freq);

max_vel_xy = MPC_XY_VEL_MAX;
max_vel_z_up = MPC_Z_VEL_MAX_DN;
max_vel_z_down = -MPC_Z_VEL_MAX_UP;

% *************************************************************************
% X
% *************************************************************************

% Longitudinal Velocity Controller
K_up = MPC_XY_VEL_P;
K_ui = MPC_XY_VEL_I;
K_ud = MPC_XY_VEL_D;

% *************************************************************************
% Y
% *************************************************************************

% Lateral Velocity Controller
K_vp = MPC_XY_VEL_P;
K_vi = MPC_XY_VEL_I;
K_vd = MPC_XY_VEL_D;

% *************************************************************************
% Z
% *************************************************************************

% Vertical Velocity Controller
K_wp = MPC_Z_VEL_P;
K_wi = MPC_Z_VEL_I;
K_wd = MPC_Z_VEL_D;

%% Position

% *************************************************************************
% X
% *************************************************************************

% Longitudinal Position Controller
K_np = MPC_XY_P;

% *************************************************************************
% Y
% *************************************************************************

% Lateral Position Controller
K_ep = MPC_XY_P;

% *************************************************************************
% Z
% *************************************************************************

% Vertical Position Controller
K_dp = MPC_Z_P;

%% Functions

% Discrete-Time Filter
function [num, denom] = filter(fc, fs)
    ohm = tan(pi*fc/fs);
    c = 1 + sqrt(2)*ohm + ohm^2;
    b0 = (ohm^2)/c;
    b1 = 2*b0;
    b2 = b0;
    a1 = 2*(ohm^2 - 1)/c;
    a2 = (1 - sqrt(2)*ohm + ohm^2)/c;
    num = [b0 b1 b2];
    denom = [1 a1 a2];
end
