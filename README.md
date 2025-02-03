# SGBC: Sub Grid Based Clustering for Efficient Reclustering in VANETs with Variable Vehicle Velocity

## Project Overview
This repository contains the implementation and evaluation of **SGBC: Sub Grid Based Clustering** for **VANETs (Vehicular Ad Hoc Networks)**. The approach aims to improve **clustering stability, minimize packet loss, and optimize cluster head selection** in high-mobility networks.

### Objectives
- Develop an **adaptive clustering algorithm** for VANETs.
- Optimize **cluster head selection** using multiple parameters: distance, velocity, energy, and RSU proximity.
- Reduce **reclustering frequency** while maintaining network efficiency.
- Minimize **packet delay and energy dissipation**.

## Features
- **Sub-Grid Partitioning**: Dynamic grid-based clustering to balance network load.
- **Cluster Head Selection**: Optimized using multiple metrics (energy, velocity, distance, RSU proximity).
- **Adaptive Reclustering Time**: Determined dynamically using **binary search**.
- **Performance Evaluation**: Compared against **Grid-Based Clustering (GBC)** and **Distance-Based Clustering (DBC)**.

# Performance Comparison Matrix

| **Metric** | **SGBC (Proposed Algorithm)** | **GBC (Grid-Based Clustering)** | **DBC (Distance-Based Clustering)** | **Improvement (%)** |
|------------|-----------------------------|-----------------------------|-----------------------------|----------------------|
| **Optimal Re-computation Time (δt)** | **Higher (More Stability)** | **Moderate** | **Lower (Frequent Updates)** | **↑ 20-40% Stability** |
| **Packet Loss Rate (%)** | **Lowest (Consistently lower across all std deviations)** | **Moderate** | **Highest** | **↓ 30-50%** |
| **Load Balancing Efficiency** | **High (Sub-grid partitioning)** | **Moderate** | **Poor** | **↑ 30-50%** |
| **Number of Cluster Heads** | **Higher (Better Load Distribution)** | **Moderate** | **Lower** | **↑ 20-30%** |
| **End-to-End Delay (ms)** | **Lowest Delay (RSU-aware clustering)** | **Higher Delay** | **Highest Delay** | **↓ 25-40%** |
| **Cluster Stability** | **High (Reduced Cluster Head Changes)** | **Moderate** | **Low** | **↑ 30-50%** |
| **Computational Complexity** | **Lower (Binary Search Optimization)** | **Moderate** | **Higher** | **↓ 20-30%** |
| **Network Lifetime** | **Extended (Balanced Energy Dissipation)** | **Moderate** | **Lower** | **↑ 25-40%** |



## Key Observations from Results:
- **SGBC consistently outperforms** GBC and DBC in terms of **packet loss, load balancing, and delay reduction**.
- SGBC maintains **higher optimal re-clustering time**, meaning **less frequent reclustering**, which **saves energy**.
- **Packet loss is lower in SGBC**, showing **better network stability**.
- **More evenly distributed cluster heads** in SGBC lead to **better energy efficiency** and **longer network lifetime**.
- **SGBC significantly reduces packet delivery delay**, making it a **better choice for time-sensitive VANET applications**.
