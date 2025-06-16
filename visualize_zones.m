%% Visualize Spatial Zones
% Plots all the classified zones in 2D space.

figure(); hold on;
plot(x(center), y(center), 'r.')
plot(x(top), y(top), 'g.')
plot(x(bottom), y(bottom), 'b.')
plot(x(left), y(left), 'y.')
plot(x(right), y(right), 'm.')
title('Zone Classification')
xlabel('X Position'); ylabel('Y Position');
legend('Center', 'Top', 'Bottom', 'Left', 'Right');
