#!/bin/bash

## Job Name
#SBATCH --job-name=Test

## Allocation Definition
#SBATCH --account=kirschen
#SBATCH --partition=kirschen

## Resources
#SBATCH --nodes=1      		# Total number of nodes  
#SBATCH --ntasks-per-node=1     # Number of cores per node
#SBATCH --time=00:05:00         # Walltime (5 minutes)
#SBATCH --mem=100G		# Memory per node
#SBATCH -o outfile  # send stdout to outfile
#SBATCH -e errfile  # send stderr to errfile

# Load the module suitable for the job
module load anaconda3_4.2

# And finally run the job​
#srun python python.py
python run.py
