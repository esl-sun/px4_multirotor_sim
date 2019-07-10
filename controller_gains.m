%% PX4 Control Gains

%% Body Rates

% D-Term Low-pass Filter
MC_DTERM_CUTOFF = 30.0;

% *************************************************************************
% Pitch
% *************************************************************************

% Pitch Rate Gains
MC_PITCHRATE_P = 0.2764;
MC_PITCHRATE_I = 0.0720;
MC_PITCHRATE_D = 0.0060;

% Pitch rate limit (deg/s)
MC_PITCHRATE_MAX = 120;

% Integrator limit
MC_PR_INT_LIM = 0.3;

% *************************************************************************
% Roll
% *************************************************************************

% Roll Rate Gains
MC_ROLLRATE_P = 0.2764;
MC_ROLLRATE_I = 0.0720;
MC_ROLLRATE_D = 0.0060;

% Roll rate limit (deg/s)
MC_ROLLRATE_MAX = 120;

% Integrator limit
MC_RR_INT_LIM = 0.3;

% *************************************************************************
% Yaw
% *************************************************************************

% Yaw Rate Gains
MC_YAWRATE_P = 0.3983;
MC_YAWRATE_I = 0.1593;
MC_YAWRATE_D = 0;

% Yaw rate limit (deg/s)
MC_YAWRATE_MAX = 80;

% Integrator limit
MC_YR_INT_LIM = 0.3;

%% Attitude

MPC_TILTMAX_AIR = 30; % Maximum tilt angle (deg)

% *************************************************************************
% Pitch
% *************************************************************************

% Pitch Angle Controller
MC_PITCH_P = 5;

% *************************************************************************
% Roll
% *************************************************************************

% Roll Angle Controller
MC_ROLL_P = 5;

% *************************************************************************
% Yaw
% *************************************************************************

% Yaw Angle Controller
MC_YAW_P = 0.8;

%% Thrust (Velocity outputs inertial thrust which is converted to an attitude)

MPC_THR_MAX = 1.0;
MPC_THR_MIN = 0.08;

%% Velocity

% D-Term Low-pass Filter
MPC_VELD_LP = 5;

% Maximum velocities
MPC_XY_VEL_MAX = 12;
MPC_Z_VEL_MAX_UP = 3;
MPC_Z_VEL_MAX_DN = 1;

% *************************************************************************
% XY
% *************************************************************************

% Horizontal Velocity Controller
MPC_XY_VEL_P = 0.1615;
MPC_XY_VEL_I = 0.0319;
MPC_XY_VEL_D = 0.0106;

% *************************************************************************
% Z
% *************************************************************************

% Vertical Velocity Controller
MPC_Z_VEL_P = 0.1549;
MPC_Z_VEL_I = 0.0279;
MPC_Z_VEL_D = 0;

%% Position

% *************************************************************************
% XY
% *************************************************************************

% Horizontal Position Controller
MPC_XY_P = 0.73254;

% *************************************************************************
% Z
% *************************************************************************

% Vertical Position Controller
MPC_Z_P = 1;
