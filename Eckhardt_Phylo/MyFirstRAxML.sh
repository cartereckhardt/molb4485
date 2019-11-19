#!/bin/bash
#SBATCH -J RAxML
#SBATCH -n 1
#SBATCH -t 30:00
#SBATCH --mem=20g
#SBATCH --mail-type=all
#SBATCH --mail-user=<seckhar1@uwyo.edu>
#SBATCH --account=inbre-train

#SBATCH --ntasks-per-node=8
#SBATCH --account=inbre-train
#SBATCH partition=inv-inbre

echo "Starting raxm1HPC run at $(date)"

module load swset gcc raxml

raxmlHPC-PTHREADS-AVX -T 8 -f a -m GTRGAMMA -p 618 -N 2 -x 309 -s KnownBears.aln -n KnownBearTree -w /project/inbre-train/inbre006/molb4485/Eckhardt_Phylo/BearTrees -o GiantPanda

echo "RAxML has finished at $(date)"
