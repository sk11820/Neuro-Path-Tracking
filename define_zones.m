%% Define Spatial Zones
% Classifies each (x, y) position into zones: top, center, bottom, left, right

buffer = 20;
top = abs(x) < buffer & y > buffer;
center = abs(x) < buffer & abs(y) < buffer;
bottom = abs(x) < buffer & y < -buffer;
left = x < -buffer & abs(y) < 75;
right = x > buffer & abs(y) < 75;
