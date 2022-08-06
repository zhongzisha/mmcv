#!/bin/bash
##SBATCH --time=1:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
##SBATCH --account=owner-guest
#SBATCH --partition=q04
##SBATCH --gres=gpu:3
#SBATCH --nodelist=g39
#SBATCH --gres=gpu:1
#SBATCH --mem-per-gpu=30G
##SBATCH --cpus-per-task=40
#SBATCH --mem=200G
#SBATCH -o cluster_logs/job-%j-%N.out
#SBATCH -e cluster_logs/job-%j-%N.err

echo "job start `date`"
echo "job run at ${HOSTNAME}"
nvidia-smi

#mpirun -np $SLURM_NTASKS pw.x -inp $DATADIR/$NAME.in > $DATADIR/$NAME.$SLURM_JOB_ID.outjjjjjjjkkkkkkkkkkkkkkkkkjj:w
df -h
nvidia-smi
ls /usr/local
which nvcc
which gcc
which g++
nvcc --version
gcc --version
g++ --version

env

nvidia-smi

free -g
top -b -n 1

uname -a

source $HOME/anaconda3_py38/bin/activate   # here, opencv-4.5.2


sleep 50000





