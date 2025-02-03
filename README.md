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

# Result Matrix

| **Metric** | **SGBC (Proposed)** | **GBC (Grid-Based Clustering)** | **DBC (Distance-Based Clustering)** |
|------------|---------------------|-----------------------------|-----------------------------|
| **Optimal Re-computation Time** (Std. Dev. = 5, Avg. Velocity = 5) | **33** | **23** | **19** |
| **Optimal Re-computation Time** (Std. Dev. = 10, Avg. Velocity = 5) | **19** | **17** | **16** |
| **Packet Loss (%) at Std. Dev. 5** | **Lower** | **Higher** | **Higher** |
| **Number of Cluster Heads (100 nodes)** | **Higher** | **Lower** | **Lower** |
| **Number of Cluster Heads (200 nodes)** | **Higher** | **Lower** | **Lower** |
| **Maximum Nodes in a Cluster (100 nodes)** | **Lower (Better Load Distribution)** | **Higher** | **Higher** |
| **Maximum Nodes in a Cluster (200 nodes)** | **Lower (Better Load Distribution)** | **Higher** | **Higher** |
| **Packet Delivery Delay (Std. Dev. = 2)** | **Lowest Delay** | **Higher Delay** | **Higher Delay** |
| **Packet Delivery Delay (Std. Dev. = 10)** | **Lowest Delay** | **Higher Delay** | **Higher Delay** |

## Key Observations from Results:
- **SGBC consistently outperforms** GBC and DBC in terms of **packet loss, load balancing, and delay reduction**.
- SGBC maintains **higher optimal re-clustering time**, meaning **less frequent reclustering**, which **saves energy**.
- **Packet loss is lower in SGBC**, showing **better network stability**.
- **More evenly distributed cluster heads** in SGBC lead to **better energy efficiency** and **longer network lifetime**.
- **SGBC significantly reduces packet delivery delay**, making it a **better choice for time-sensitive VANET applications**.
