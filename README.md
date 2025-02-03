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

### Results Matrix
| Standard Deviation | SGBC Reclustering Time | DBC Reclustering Time | GBC Reclustering Time | Packet Loss (SGBC) | Packet Loss (GBC) |
|--------------------|-----------------------|-----------------------|-----------------------|--------------------|--------------------|
| 0.5               | 47                    | 29                    | 20                    | Low                | High               |
| 5.0               | 33                    | 23                    | 19                    | Low                | High               |
| 10.0              | 19                    | 17                    | 16                    | Low                | High               |
| 15.0              | 12                    | 12                    | 12                    | Low                | High               |
| 20.0              | 9                     | 10                    | 9                     | Low                | High               |

### Key Observations
- SGBC **maintains stable clustering** even at higher standard deviations.
- SGBC exhibits **lower packet loss** than GBC and DBC.
- SGBC achieves **higher reclustering time**, leading to **better energy efficiency**.
- **Balanced cluster head distribution** improves network lifetime.

## Future Work
- Extend **SGBC to real-world VANET scenarios** considering **traffic signals, road junctions, and time-of-day variations**.
- Adapt the methodology for **Mobile Ad Hoc Networks (MANETs)**.
- Optimize further using **Machine Learning-based cluster head selection**.
