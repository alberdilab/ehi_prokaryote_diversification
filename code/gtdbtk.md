# Code for phylogeny analysis

mkdir mags



## Code for GTDB-tk:
```
#!/bin/sh
#SBATCH -c 48 --mem 456G --time 24:00:00 # number of cores

source activate /projects/ehi/data/0_Environments/conda/1f1193fc5897e6143ed190423b019f91_

mkdir tmp
export TMPDIR=tmp

export GTDBTK_DATA_PATH=/projects/mjolnir1/data/databases/GTDBTK_DB/release214

gtdbtk classify_wf \
        --genome_dir mags/ \
        --extension ".fa.gz" \
        --out_dir gtdbtk_full_tree \
        --cpus 48 \
        --skip_ani_screen \
        --full_tree
```