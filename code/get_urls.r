library(tidyverse)

df <- read_delim("data/DM_batch-Phylogeny_analysis.csv", delim = ',') %>%
  select(dereped_mag_urls) %>%
  separate_longer_delim(., dereped_mag_urls, ", ")

write_delim(df, "data/urls.tsv")
