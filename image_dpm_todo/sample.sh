CKPT_PATH="/data2/code/Diffusion-Assignment6-DPMSolver/image_dpm_todo/chk_point/last.ckpt"

# 인자 개수 확인
if [ $# -ne 1 ]; then
    echo "please type order number [1,2]"
fi

CONDITION=$1
case "${CONDITION}" in
    1)  
        SAVE_DISR_PATH="./sampled_images"
        echo "order 1"
        python sampling.py --ckpt_path "${CKPT_PATH}" --save_dir "${SAVE_DIR_PATH}" --option1
        ;;
    2)
        echo "order 2"
        SAVE_DIR_PATH="./sampled_images_order2"
        # 조건 2에 해당하는 명령어 추가
        python sampling.py --ckpt_path "${CKPT_PATH}" --save_dir "${SAVE_DIR_PATH}" --dpm_solver_order $CONDITION
        ;;
    *)
        echo "Error not supported condition: '${CONDITION}'"
        usage
        ;;
esac


# python sampling.py --ckpt_path "/data2/code/Diffusion-Assignment6-DPMSolver/image_dpm_todo/chk_point/last.ckpt" --save_dir "./sampled_images_order2" --dpm_solver_order 2