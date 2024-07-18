#!/bin/bash

#SBATCH --job-name=train_shs
#SBATCH --output=train_shs_%j.out
#SBATCH --error=train_shs_%j.err
#SBATCH --time=14-0
#SBATCH --partition=debug
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=20G
#SBATCH --gres=gpu:1

python shs.py --train_method full \
 --class_to_forget 0 --lr 1e-5 --epochs 5 --batch_size 16 --device '0'