#!/bin/bash -
#SBATCH -J Observers                   # Job Name
#SBATCH -o SpEC.stdout                # Output file name
#SBATCH -e SpEC.stderr                # Error file name
#SBATCH -n 48                  # Number of cores
#SBATCH --ntasks-per-node 48        # number of MPI ranks per node
#SBATCH -p cca                  # Queue name
#SBATCH -t 24:0:00   # Run time
#SBATCH -A cca                # Account name
#SBATCH --no-requeue
#SBATCH --constraint=ib

# DO NOT MANUALLY EDIT THIS FILE! See `MakeSubmit.py update -h`.
# This is for submitting a batch job on 'wheeler'.
umask 0022
. bin/this_machine.env || echo 'Not using env file.'
set -x
export PATH=$(pwd -P)/bin:$PATH

./run_script 2
./run_script 3
./run_script 4

