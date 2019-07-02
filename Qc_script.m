%% mdl_quadrotor is needed to load quadrotor parameters
clear;clc;
startup_rvc
mdl_quadrotor
% Question C: Remove the gravity feedforward and experiment with large altitude gain or a
% PI controller.
Qc
%% Modified Simulink model without gravity feedforward.Kp = 100,Kd=1
sim('Qc.slx')
x = result(:,1);
y = result(:,2);
z = -result(:,3);
axis_lim = 5;
plotter(x,y,z,axis_lim);
