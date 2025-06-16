%% Plot 3D Trajectories with Sequence Patterns and Reward Markers
% Uses scatter3 and plot3 to show movement and outcomes in 3D.

patterns = {
    'TopLeft', find(topleftsequence), [1 0 0];
    'TopRight', find(toprightsequence), [0 1 0];
    'BottomLeft', find(bottomleftsequence), [0 0 1];
    'BottomRight', find(bottomrightsequence), [1 0 1];
};

figure; hold on;
h_full = plot3(x, y, t, 'k:', 'LineWidth', 1.2); % Full path
h_legend = gobjects(size(patterns,1)+1,1);
h_legend(1) = h_full;

for i = 1:size(patterns,1)
    label = patterns{i,1};
    pattern_idxs = patterns{i,2};
    color = patterns{i,3};

    for j = 1:length(pattern_idxs)
        idx = pattern_idxs(j);
        if idx + 4 <= length(transition_indices)
            start_frame = transition_indices(idx);
            end_frame = transition_indices(idx + 4);
            traj_idx = start_frame:end_frame;

            plot3(x(traj_idx), y(traj_idx), t(traj_idx), '-', 'Color', color, 'LineWidth', 2, 'HandleVisibility','off');
            scatter3(x(traj_idx(1)), y(traj_idx(1)), t(traj_idx(1)), 50, color, 'filled', 'o', 'HandleVisibility','off');
            scatter3(x(traj_idx(end)), y(traj_idx(end)), t(traj_idx(end)), 50, color, 'x', 'HandleVisibility','off');
        end
    end

    h_legend(i+1) = plot3(NaN, NaN, NaN, '-', 'Color', color, 'LineWidth', 2, 'DisplayName', label);
end

legend(h_legend, ['Full Trajectory'; patterns(:,1)], 'Location', 'eastoutside');
xlabel('X Position'); ylabel('Y Position'); zlabel('Time (ms)');
title('3D Trajectories with Sequence Labels');
grid on; view(3); axis vis3d; rotate3d on;
