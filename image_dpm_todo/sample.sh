CKPT_PATH="/data2/code/Diffusion-Assignment6-DPMSolver/image_dpm_todo/chk_point/last.ckpt"
SAVE_DIR_PATH="./sampled_images"

mkdir -p ${SAVE_DIR_PATH}

python sampling.py --ckpt_path ${CKPT_PATH} --save_dir ${SAVE_DIR_PATH}