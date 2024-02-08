####################################################################
## Code for establishing clusters -> feeds into 'get_alignment.sh'
## Raphael Eisenhofer
####################################################################
library(tidyverse)

df <- read_delim("data/ehi_clusters_tidy.tsv")
md <- read_delim("data/ehi_metadata.csv") %>%
  select(ID, mag_name) %>%
  mutate(mag_name = str_replace_all(mag_name, ".fa", ""))
  

df <- df %>%
  filter(hostn > 6 & cluster_size > 10) %>%
  select(genome, host_species, cluster, family, genus) %>%
  mutate(host_species = str_replace_all(host_species, " ", "_")) %>%
  left_join(., md, by = join_by(genome == mag_name))

df %>%
  summarise(n = n(), .by = cluster) %>%
  nrow()

write_tsv(df, "data/clusters_for_alignments.tsv")



df2 <- df %>%
  filter(cluster == "499") %>%
  select(ID)

write_tsv(df2, "cluster499.tsv")

df3 <- df %>%
  filter(cluster == "499") %>%
  select(genome)
write_tsv(df3, "cluster499_mags.tsv")
