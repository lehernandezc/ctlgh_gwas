#!/bin/sh

###############################################
#                                             #
# A basic script for running admixture job.   #
#                                             #
# For more details and options,               #
# please refer to the eddie3 wiki page.       #
#                                             #
###############################################

# Grid Engine options
# Job name
#$ -N run_admix
# Set working directory
#$ -cwd
# Request memory
#$ -l h_vmem=20G
# CPU (GPU) slots
#$ -pe sharedmem 6
#$ -R y
# Time
#$ -l h_rt=96:00:00
#$ -P roslin_EERA_CTLGH
# Initialise the environment modules
. /etc/profile.d/modules.sh

# Run the program

# Run the program
echo '=============================================='
echo '** Hello!**'
echo "This job is running on $HOSTNAME"

module load roslin/admixture/1.3.0

cd /exports/cmvm/eddie/eb/groups/EERA_CTLGH/Enrique_Hernandez/projects/adgg_tz/admixture_analyses/Merged_04-2022_3/

awk '{$1=0;print $0}' Merged_04-2022_3.bim > Merged_04-2022_3.bim.tmp

mv Merged_04-2022_3.bim.tmp Merged_04-2022_3.bim

# Run unsupervised Admixuture for k=2 to k=14
for i in {6..20}
 do
  admixture -B -m EM -j6 --cv=10 Merged_04-2022_3.bed $i > log${i}.out
done

echo '** Done **'
echo "=============================================="
