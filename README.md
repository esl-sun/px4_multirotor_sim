# PX4 Multirotor Sim

This is a MATLAB representation of the PX4 multirotor controllers simulating a X Quadrotor.

To run the simulation, execute the `setup_sim.m` script.

## File Descriptions

### setup_sim.m

Simply run this script to setup all the needed variables and run the Simulink model.

### model_parameters.m

Contains the physical parameters of the X Quadrotor.

### controller_gains.m

Contains the PX4 controller gains.

### px4_multirotor_sim.slx

A Simulink model containing a X Quadrotor model and a representation of the PX4 controllers.