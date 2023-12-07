# EHI - Host-shaped prokaryote diversification
Data and code repository for the prokaryote diversification study based on EHI data.

## 1 - Phylogenetic clusters
In this initial step the phylogeny of EHI MAGs is split into phylogenetically related clusters of MAGs. Clusters are generated at different thresholds of phylogenetic distances: 0.3, 0.35, 0.4.

**Code:** 1-phylogenetic_clusters.Rmd
**Output at 0.30:** data/cluster_table_30.Rdata
**Output at 0.35:** data/cluster_table_35.Rdata
**Output at 0.40:** data/cluster_table_40.Rdata
**Output at 0.45:** data/cluster_table_45.Rdata

Diverse clusters are defined as those containing >10 MAGs.

| Distance threshold | Total clusters | Diverse clusters | MAGs per cluster | Hosts per cluster |
|---|---|---|---|---|
| 0.30 |   |   |   |   |
| 0.35 | 7265 |   |   |   |
| 0.40 | 6350 |   |   |   |
| 0.45 |   |   |   |   |
