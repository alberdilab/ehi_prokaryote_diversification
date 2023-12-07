####################################################################
## Code for establishing clusters -> feeds into 'get_alignment.sh'
## Raphael Eisenhofer
####################################################################

df <- read_delim("data/ehi_clusters_tidy.tsv")


df <- df %>%
  filter(hostn > 6 & cluster_size > 10) %>%
  select(genome, host_species, cluster, family, genus) %>%
  mutate(host_species = str_replace_all(host_species, " ", "_"))

df %>%
  summarise(n = n(), .by = cluster) %>%
  nrow()

write_tsv(df, "data/clusters_for_alignments.tsv")
