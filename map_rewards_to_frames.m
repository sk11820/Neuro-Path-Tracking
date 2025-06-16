%% Map Reward Timestamps to Frame Indices
% Finds the closest time point in t for each reward.

reward_frame_indices = zeros(size(reward_time_ms));
for i = 1:length(reward_time_ms)
    [~, reward_frame_indices(i)] = min(abs(t - reward_time_ms(i)));
end
