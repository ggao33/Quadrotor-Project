%% mdl_quadrotor is needed to load quadrotor parameters
clear;clc;
startup_rvc
mdl_quadrotor
% Question B:Experiment with different control gains. What happens if you reduce the damping
% gains to zero?
Qb
% Simulink gains needs to be manually changed every time and then run the 'Qb.slx' simulink
% model
% Velocity controller Kp = 0.1     Kp-> 0.5     Kp->0
%                     Kd = 2       Kd-> 20      Kd->0(simulink and plotter axis limit->10)
% Attitude controller Kp = 100     Kp-> 1000    Kp->0
%                     Kd = 1       Kd-> 10      Kd->0(simulink and plotter axis limit->10)
% Yaw controller      Kp = 20      Kp-> 200     Kp->0
%                     Kd = 2       Kd-> 20      Kd->0
% Height controller   Kp = 4       Kp-> 40      Kp->0(simulink and plotter axis limit->10)
%                     Kd = 1       Kd-> 10      Kd->0(simulink and plotter axis limit->10)

%% run 'Qb.slx' simulink and plot the trjaectory
sim('Qb.slx')
x = result(:,1);
y = result(:,2);
z = -result(:,3);
axis_lim = 10;
plotter(x,y,z,axis_lim);