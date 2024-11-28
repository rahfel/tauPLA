######################################################################################

# ------------------------------------------------------------------------------------
# CellRanger: to run on the HPC
# ------------------------------------------------------------------------------------

#!/bin/bash
#PBS -l walltime=00:10:00
#PBS -l select=1:ncpus=20:mem=96gb
#PBS -J 1-2

export PATH=/rds/general/user/rf1116/home/SCRATCH/cellranger-3.1.0:$PATH

mkdir $EPHEMERAL/$PBS_JOBID
cd $EPHEMERAL/$PBS_JOBID
cp $PBS_O_WORKDIR/Javier.List.txt ./

NAME=$(head -n $PBS_ARRAY_INDEX Javier.List.txt | tail -1 )
ID=$NAME

FQ1=/rds/general/user/rf1116/ephemeral/EPHEM_JULY2/EPHEM_JUNE2/EPHEM_MAY2/JAVIER/Javier_Alegre-Abarrategui_SOUK005728/HLFT3DRXX_SP/$ID/
FQ2=/rds/general/user/rf1116/ephemeral/EPHEM_JULY2/EPHEM_JUNE2/EPHEM_MAY2/JAVIER/Javier_Alegre-Abarrategui_SOUK005728/HLFT3DRXX_S2/$ID/

cellranger count  --id=$ID --transcriptome=/rds/general/user/rf1116/home/SCRATCH/GRCh38-3.1.0_premrna_ens99 --fastqs=$FQ1,$FQ2 --sample=$NAME --expect-cells=10000 --localcores=10


# ------------------------------------------------------------------------------------
# Cellbender: to run on the HPC
# ------------------------------------------------------------------------------------


cellbender remove-background --input /rds/general/user/rf1116/ephemeral/EPHEM_JULY2022/CellBender/C41_raw_feature_bc_matrix --output /rds/general/user/rf1116/ephemeral/EPHEM_JULY2022/CellBender/C41_raw_feature_bc_matrix/cellbender.h5 --cuda --fpr 0.01 --expected-cells 10000 --total-droplets-included 15000



