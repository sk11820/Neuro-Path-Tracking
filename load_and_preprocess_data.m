%% Load and Preprocess Data
% Loads x, y, t, and reward time vectors. Truncates data to a maximum frame length.

load('example_position_34990_IL5.mat');
x = x(:); y = y(:); t = t(:); reward_time_ms = reward_time_ms(:);

max_frame = min(1500, length(x));
x = x(1:max_frame); y = y(1:max_frame); t = t(1:max_frame);
reward_time_ms = reward_time_ms(reward_time_ms <= t(end));
