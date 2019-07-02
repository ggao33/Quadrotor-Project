function plotter(x,y,z,axis_lim)

[crash time]= crash_tester(z);
if crash == true
disp(['Attention!This quadrotor crashed at ' num2str(time) ' sec!']);
end

figure;
set(gcf, 'Position', [760, 70, 700, 700])
subplot(2,2,1)
plot3(x,y,z);
grid on;
title('Quadrotor 3D Trajectory')
xlabel('x')
ylabel('y')
zlabel('Height')
axis([-axis_lim axis_lim -axis_lim axis_lim 0 axis_lim])


subplot(2,2,2)
plot(x,y);
grid on;
title('Quadrotor Trajectory XY plane')
xlabel('x')
ylabel('y')
axis([-axis_lim axis_lim -axis_lim axis_lim])

subplot(2,2,3)
plot(y,z);
grid on;
title('Quadrotor Trajectory YZ plane')
xlabel('y')
ylabel('z')
axis([-axis_lim axis_lim 0 axis_lim])

subplot(2,2,4)
plot(x,z);
grid on;
title('Quadrotor Trajectory XZ plane')
xlabel('x')
ylabel('z')
axis([-axis_lim axis_lim 0 axis_lim])
end