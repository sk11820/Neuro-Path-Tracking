%% Plot Transition Sequence
% Visualizes the transition sequence as a time series.

figure;
plot(transition_sequence, '-o');
xlabel('Step Index');
ylabel('Transition ID');
title('Zone Transition Sequence Over Time');
