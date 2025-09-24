> **Note:** To access all shared projects, get information about environment setup, and view other guides, please visit [Explore-In-HMOS-Wearable Index](https://github.com/Explore-In-HMOS-Wearable/hmos-index).

# How To Make Image Grid with WaterFlow struct with Dragging Functionality

This codelab demonstrates how to implement a dynamic, draggable image grid for HarmonyOS NEXT wearables. You’ll learn to build both grid and waterflow (masonry) layouts with smooth drag-and-drop reordering.

# Preview

<div align="center">
  <img src="./imgs/grid.gif" width="25%">
</div>

# Use Cases

* **Grid Display**: Uniform image grid optimized for round screens.
* **Waterflow Display**: Masonry layout for variable-height content.
* **Dragging**: Long-press and drag to reorder items with visual feedback.

# Tech Stack

- **Languages**: ArkTS, TypeScript
- **Frameworks**: HarmonyOS NEXT SDK (Developer Preview)
- **Tools**: DevEco Studio 5.1.0.240SP1+
- **Libraries**: @kit.ArkUI

# Directory Structure

```entry/src/main/ets/
|--- entryability
|    |--- EntryAbility.ets
|--- entrybackupability
|    |--- EntryBackupAbility.ets

|--- pages
|    |--- ExplorePage.ets       
|    |--- NavigationRouter.ets   
|    |--- StickyPage.ets   
|       
|--- utils
|    |--- WaterFlowDataSource.ets     // Waterflow layout data source

````

# Constraints and Restrictions

## Supported Devices

* Huawei Watch 5
* Other HarmonyOS NEXT-compatible watches

# LICENSE

Image Grid with Dragging Functionality is distributed under the terms of the MIT License.
See the [LICENSE](/LICENSE) for more information.

