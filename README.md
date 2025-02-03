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

## Results & Performance Evaluation
### Performance Metrics
The algorithm was evaluated based on the following metrics:
- **Optimal Reclustering Time**
- **Packet Loss**
- **Number of Cluster Heads**
- **Load Distribution**
- **Packet Delivery Delay**

# Performance Comparison Matrix

| **Performance Metric** | **SGBC (Proposed)** | **GBC (Grid-Based Clustering)** | **DBC (Distance-Based Clustering)** | **Best Performing Algorithm** |
|------------------------|---------------------|-----------------------------|-----------------------------|---------------------------|
| **Optimal Re-computation Time** | **Higher (Less Frequent Reclustering)** | **Lower** | **Lower** | **SGBC** |
| **Packet Loss (%)** | **Lowest** | **Higher** | **Higher** | **SGBC** |
| **Number of Cluster Heads (100 Nodes)** | **More** | **Fewer** | **Fewer** | **SGBC** |
| **Number of Cluster Heads (200 Nodes)** | **More** | **Fewer** | **Fewer** | **SGBC** |
| **Load Balancing** | **Better (Even Distribution of Nodes)** | **Poorer** | **Poorer** | **SGBC** |
| **Maximum Nodes in a Cluster (100 Nodes)** | **Lower (Better Load Distribution)** | **Higher** | **Higher** | **SGBC** |
| **Maximum Nodes in a Cluster (200 Nodes)** | **Lower (Better Load Distribution)** | **Higher** | **Higher** | **SGBC** |
| **Energy Efficiency** | **Higher (Less Cluster Head Load)** | **Lower** | **Lower** | **SGBC** |
| **Packet Delivery Delay** | **Lower** | **Higher** | **Higher** | **SGBC** |
| **Network Stability** | **Higher** | **Lower** | **Lower** | **SGBC** |
| **Scalability** | **Better (Handles More Nodes Efficiently)** | **Moderate** | **Poor** | **SGBC** |


## Key Observations from Results:
- **SGBC consistently outperforms** GBC and DBC in terms of **packet loss, load balancing, and delay reduction**.
- SGBC maintains **higher optimal re-clustering time**, meaning **less frequent reclustering**, which **saves energy**.
- **Packet loss is lower in SGBC**, showing **better network stability**.
- **More evenly distributed cluster heads** in SGBC lead to **better energy efficiency** and **longer network lifetime**.
- **SGBC significantly reduces packet delivery delay**, making it a **better choice for time-sensitive VANET applications**.
