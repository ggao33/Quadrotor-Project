%% mdl_quadrotor is needed to load quadrotor parameters
clear;clc;
startup_rvc
mdl_quadrotor
% Question F:Program a ballistic motion. Have the quadrotor take off at 45 deg to horizontal
% then remove all thrust.
% Question G: Program a smooth landing.
Qf
%% run 'Qf_0deg.slx' simulink and plot the trjaectory. take off horizontally
sim('Qf.slx')
x = result(:,1);
y = result(:,2);
z = -result(:,3);
axis_lim = 10;
plotter(x,y,z,axis_lim);
