%% mdl_quadrotor is needed to load quadrotor parameters
clear;clc;
startup_rvc
mdl_quadrotor
% Question D:When the vehicle has nonzero roll and pitch angles, the magnitude of the vertical
% thrust is reduced and the vehicle will slowly descend. Add compensation to
% the vertical thrust to correct this.
%% Simulink model without compensation.Open the Scope to see thrust difference
Qd_before
%% Simulink model with compensation.Open the Scope to see thrust difference
Qd_cmpsat
