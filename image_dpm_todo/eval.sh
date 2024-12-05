GT_IMG_DIR="./data/afhq/eval"
GEN_IMG_DIR="./sampled_images"

RESULT_DIR="./results"
mkdir -p ${RESULT_DIR}

python ./fid/measure_fid.py $GT_IMG_DIR $GEN_IMG_DIR >> ./$RESULT_DIR/fid.txt

