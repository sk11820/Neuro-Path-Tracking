%% Compute Zone Transitions
% Calculates directional transitions between zones

path_transition_vector = zeros(length(x)-1, 1);
path_transition_vector(center(1:end-1) & top(2:end)) = 1;
path_transition_vector(center(1:end-1) & bottom(2:end)) = 2;
path_transition_vector(top(1:end-1) & left(2:end)) = 3;
path_transition_vector(top(1:end-1) & right(2:end)) = 4;
path_transition_vector(bottom(1:end-1) & left(2:end)) = 5;
path_transition_vector(bottom(1:end-1) & right(2:end)) = 6;
path_transition_vector(left(1:end-1) & top(2:end)) = 7;
path_transition_vector(left(1:end-1) & bottom(2:end)) = 8;
path_transition_vector(right(1:end-1) & top(2:end)) = 9;
path_transition_vector(right(1:end-1) & bottom(2:end)) = 10;
path_transition_vector(bottom(1:end-1) & center(2:end)) = 11;
path_transition_vector(top(1:end-1) & center(2:end)) = 12;

transition_indices = find(path_transition_vector > 0);
transition_sequence = path_transition_vector(transition_indices);
