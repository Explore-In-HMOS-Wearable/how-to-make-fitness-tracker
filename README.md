> **Note:** To access all shared projects, get information about environment setup, and view other guides, please visit [Explore-In-HMOS-Wearable Index](https://github.com/Explore-In-HMOS-Wearable/hmos-index).

# How To Make Fitness Tracker

This HarmonyOS application helps users perform interval training with configurable work/rest periods.  
It tracks rounds visually, shows color-coded phase indicators, and provides start/pause/reset controls.  
The goal is to demonstrate a simple yet responsive fitness timer with a clean modular UI and separate business logic.

# Preview

<div>
  <img src="./screenshots/Animated.gif" width="25%">
</div>

# Use Cases

- Track configurable work/rest intervals during workouts
- Monitor training progress through visual round indicators
- Start, pause, and reset workout sessions easily
- Use on HarmonyOS devices or simulator

# Tech Stack

- **Languages**: ArkTS, ArkUI
- **Frameworks**: HarmonyOS SDK 5.0.2(14)
- **Tools**: DevEco Studio Version 5.1.0.828
- **Libraries**:
    - `@kit.AbilityKit`
    - `@kit.ArkUI`
    - `@kit.PerformanceAnalysisKit`

# Project Directory

```
├── AppScope/
│ ├── app.json5
│ └── resources/
│ └── base/
│ ├── element/
│ │ └── string.json
│ └── media/
│ ├── background.png
│ ├── foreground.png
│ └── layered_image.json
├── entry/
│ └── src/
│ ├── main/
│ │ ├── ets/
│ │ │ ├── entryability/ # Ability implementation
│ │ │ ├── pages/ # Main application pages
│ │ │ │ └── Index.ets # Fitness timer implementation
│ │ │ └── components/ # Reusable UI components
│ │ ├── module.json5
│ │ └── resources/
│ │ ├── base/ # Base resources
│ │ ├── dark/ # Dark mode resources
│ │ └── rawfile/ # Raw assets
│ └── ohosTest/ # Test cases
├── screenshots/ # Application screenshots
│ ├── work_phase.png
│ └── rest_phase.png
```

# Constraints and Restrictions

## Supported Devices

- Huawei Watch 5

# LICENSE

**Fitness Tracker** is distributed under the terms of the MIT License.  
See the [LICENSE](LICENSE) for more information.