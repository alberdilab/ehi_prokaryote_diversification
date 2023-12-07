# EHI - Host-shaped prokaryote diversification
Data and code repository for the prokaryote diversification study based on EHI data.

## 1 - Phylogenetic clusters
In this initial step the phylogeny of EHI MAGs is split into phylogenetically related clusters of MAGs. Clusters are generated at different thresholds of phylogenetic distances: 0.3, 0.35, 0.4 and 0.45.

- **Code:** 1-phylogenetic_clusters.Rmd
- **Output at 0.30:** results/cluster_table_30.Rdata
- **Output at 0.35:** results/cluster_table_35.Rdata
- **Output at 0.40:** results/cluster_table_40.Rdata
- **Output at 0.45:** results/cluster_table_45.Rdata

Diverse clusters are defined as those containing >10 MAGs.

| Distance threshold | Total clusters | Diverse clusters | Mean MAGs | Max MAGs | Mean hosts | Max hosts |
|---|---|---|---|---|---|---|
| 0.30 | 2680 | 39 | 4.20 | 235 | 1.96 | 34 |
| 0.35 | 2193 | 45 | 5.21 | 441 | 2.17 | 34 |
| 0.40 | 1836 | 54 | 6.32 | 442 | 2.39 | 34 |
| 0.45 | 1557 | 62 | 7.56 | 442 | 2.63 | 37 |

- **Total clusters:** number of clusters with at least 1 EHI MAG
- **Diverse clusters:** number of clusters with >10 MAGs and >10 hosts.
- **Mean MAGs:** average number of MAGs per cluster
- **Max MAGs:** maximum number of MAGs per cluster
- **Mean hosts:** average number of hosts per cluster
- **Max hosts:** maximum number of hosts per cluster

## 2 - Cluster analysis
