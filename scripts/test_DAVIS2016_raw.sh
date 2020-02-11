#!/bin/bash

# Script to compute raw results (before post-processing)

CKPT_FILE='/home/member/Workspace/thuync/checkpoints/pwc/unsupervised_detection_models/davis_best_model/'
DATASET_FILE='/home/member/Workspace/dataset/DAVIS2017/'
PWC_CKPT_FILE='/home/member/Workspace/thuync/checkpoints/pwc/pwcnet/'

python test_generator.py \
--dataset=DAVIS2016 \
--ckpt_file=$CKPT_FILE \
--flow_ckpt=$PWC_CKPT_FILE \
--test_crop=0.9 \
--test_temporal_shift=1 \
--root_dir=$DATASET_FILE \
--generate_visualization=True \
--test_save_dir=/tmp/davis_test
