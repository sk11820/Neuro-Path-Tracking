%% Compute Choice Accuracy Based on Reward Delivery
% Determines % of trials per sequence that resulted in reward.

sequence_labels = {'TopLeft', 'TopRight', 'BottomLeft', 'BottomRight'};
sequence_starts = {find(topleftsequence), find(toprightsequence), find(bottomleftsequence), find(bottomrightsequence)};

fprintf('\n=== Choice Accuracy Report (Reward DURING sequence) ===\n');
for i = 1:length(sequence_labels)
    label = sequence_labels{i};
    start_indices = sequence_starts{i};

    total_trials = 0;
    rewarded_trials = 0;

    for j = 1:length(start_indices)
        idx = start_indices(j);
        if idx + 4 <= length(transition_indices)
            start_frame = transition_indices(idx);
            end_frame = transition_indices(idx + 4);
            if end_frame <= length(t)
                start_time = t(start_frame);
                end_time = t(end_frame);
                reward_in_window = any(reward_time_ms >= start_time & reward_time_ms <= end_time);

                total_trials = total_trials + 1;
                if reward_in_window
                    rewarded_trials = rewarded_trials + 1;
                end
            end
        end
    end

    if total_trials > 0
        accuracy = (rewarded_trials / total_trials) * 100;
        fprintf('%s: %.1f%% (%d/%d)\n', label, accuracy, rewarded_trials, total_trials);
    else
        fprintf('%s: No trials found.\n', label);
    end
end
