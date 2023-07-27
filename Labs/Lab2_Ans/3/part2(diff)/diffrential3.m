clear all; close all; clc
J = 3.2284*(10^(-5));
b = 3.5077*(10^(-6));
k = 0.0274;
Ra = 4;
La = 2.75*(10^(-6));
Va = 1;
Func = @(t, x)[(-Ra*x(1)+Va-k*x(2))/La; (-b*x(2)+k*x(1))/J; x(2)];
ts = 0:0.01:5;
x0 = [0 0 0 ];
[t, x] = ode45(Func, ts, x0);

% plot(t, x(:, 1), 'linewidth', 1);
% title('current')
% xlabel('t')
% ylabel('i')
plot(t, x(:, 2), 'linewidth', 2);
title('speed')
xlabel('t')
ylabel('w')
% plot(t, x(:, 3), 'linewidth', 2);
% title('position')
% xlabel('t')
% ylabel('theta')

