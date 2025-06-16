# NeuroBehaviorAnalysis

This repository contains modular MATLAB scripts for analyzing spatial trajectories and reward-linked behavior patterns in rodents. These scripts were developed as part of a behavioral neuroscience project and are used to detect zone transitions, match patterns of movement, and evaluate reward timing accuracy.

## 🔍 What This Project Does

- Loads x, y, t, and reward timestamps from experimental data
- Classifies (x, y) points into 5 spatial zones: top, center, bottom, left, right
- Computes directional transitions between zones
- Detects specific spatial movement patterns (e.g., top-left to center)
- Plots 3D trajectories with start/end markers
- Aligns rewards to time intervals and calculates accuracy of reward delivery

## 📁 Folder Structure

Each script is modular and named for its purpose:

| Script Name                 | Purpose                                            |
|----------------------------|----------------------------------------------------|
| `load_and_preprocess_data.m` | Loads and clips data vectors from .mat file     |
| `define_zones.m`           | Classifies spatial zones                         |
| `compute_transitions.m`    | Computes transition vector from movement         |
| `identify_sequence_patterns.m` | Detects known transition sequences          |
| `plot_3D_trajectories.m`   | Plots full and pattern-matched trajectories      |
| `map_rewards_to_frames.m`  | Aligns reward timestamps to closest time frames  |
| `compute_reward_accuracy.m`| Evaluates reward delivery during sequences       |
| `plot_transitions_over_time.m`| Visualizes transitions as a time series      |

## 🧠 Use Case

These scripts were used in rodent behavioral experiments to analyze:
- Learning patterns
- Reward-matching accuracy
- Cognitive choice behavior in maze-like settings

## 🛠 Requirements

- MATLAB R2020a or later
- `.mat` file with variables: `x`, `y`, `t`, `reward_time_ms`

## 📈 Sample Output

You can generate 3D plots of reward-aligned trajectories using:
```matlab
run('main.m')
```

## 🧪 Disclaimer

This is academic research code for neuroscience experimentation and visualization. Real animal data not included due to privacy constraints. You may simulate input data or request a demo dataset.
