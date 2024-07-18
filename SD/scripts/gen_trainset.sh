#!/bin/bash

#SBATCH --job-name=gen_shs
#SBATCH --output=gen_img_%j.out
#SBATCH --error=gen_img_%j.err
#SBATCH --time=14-0
#SBATCH --partition=debug
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=20G
#SBATCH --gres=gpu:1

# python eval_scripts/generate-images_nude.py \
#  --prompts_path 'prompts/nsfw.csv' \
#  --save_path 'data/NSFW' \
#  --model_name 'SD' --device 'cuda:0' --num_samples 4

python eval_scripts/generate-images_nude.py \
 --prompts_path 'prompts/not_nsfw.csv' \
 --save_path 'data/NotNSFW' \
 --model_name 'SD' --device 'cuda:0' --num_samples 4