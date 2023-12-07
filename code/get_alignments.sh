####################################################################################
# Script for pulling out a cluster's GTDBtk multiple sequence alignment
# Raphael Eisenhofer
####################################################################################

## Pull MSA from ERDA:
wget https://sid.erda.dk/share_redirect/HFV9t7MFbShttps://sid.erda.dk/share_redirect/HFV9t7MFbS
gunzip gtdbtk.bac120.msa.fasta.gz

## loop over clusters, creating a MSA per cluster:
mkdir clusters

## parse over gtdbtk MSAs, extracting genomes from each cluster and renaming for clarity:
while read genome host cluster family genus;
    do grep -w -A 1 $genome gtdbtk.bac120.msa.fasta >> clusters/"$cluster"_msa.faa && sed -i "s/"$genome"/"$genome"_"$host"/g" clusters/"$cluster"_msa.faa;
done < clusters_for_alignments.tsv

## add outgroup 'RS_GCF_945605565.1 - s__Paenibacillus_B dendritiformis_A' to each alignment:
for i in clusters/*.faa;
    do grep -w -A 1 "RS_GCF_945605565.1" gtdbtk.bac120.msa.fasta >> $i;
done
