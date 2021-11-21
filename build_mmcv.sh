export MMCV_WITH_OPS=1
export CUDA_HOME=/share/home/zhongzisha/cuda-10.2-cudnn-8.2.2
export MAX_JOBS=1
export TORCH_CUDA_ARCH_LIST="7.0"
python setup.py build_ext
python setup.py develop
#pip install -e . -vvv