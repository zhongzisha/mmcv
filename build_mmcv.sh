export MMCV_WITH_OPS=1
export CUDA_HOME=/share/home/zhongzisha/cuda-10.2-cudnn-8.2.2
export MAX_JOBS=16
export TORCH_CUDA_ARCH_LIST="7.0"
python setup.py build_ext
python setup.py develop
#pip install -e . -vvv

# shellcheck disable=SC2050
if [ "0" == "1" ]; then

echo "yes"

/share/home/zhongzisha/cuda-10.2-cudnn-8.2.2/bin/nvcc  \
-DMMCV_WITH_CUDA -I/share/home/zhongzisha/mmcv-1.3.12/mmcv/ops/csrc/common \
-I/share/home/zhongzisha/mmcv-1.3.12/mmcv/ops/csrc/common/cuda \
-I/share/home/zhongzisha/coltran_project/venv_test/lib/python3.8/site-packages/torch/include \
-I/share/home/zhongzisha/coltran_project/venv_test/lib/python3.8/site-packages/torch/include/torch/csrc/api/include \
-I/share/home/zhongzisha/coltran_project/venv_test/lib/python3.8/site-packages/torch/include/TH \
-I/share/home/zhongzisha/coltran_project/venv_test/lib/python3.8/site-packages/torch/include/THC \
-I/share/home/zhongzisha/cuda-10.2-cudnn-8.2.2/include -I/share/home/zhongzisha/coltran_project/venv_test/include \
-I/share/home/zhongzisha/miniconda3/include/python3.8 -c \
-c /share/home/zhongzisha/mmcv-1.3.12/mmcv/ops/csrc/pytorch/cuda/nms_cuda.cu \
-o /share/home/zhongzisha/mmcv-1.3.12/build/temp.linux-x86_64-3.8/mmcv/ops/csrc/pytorch/cuda/nms_cuda.o \
-D__CUDA_NO_HALF_OPERATORS__ -D__CUDA_NO_HALF_CONVERSIONS__ \
-D__CUDA_NO_BFLOAT16_CONVERSIONS__ -D__CUDA_NO_HALF2_OPERATORS__ --expt-relaxed-constexpr \
--compiler-options ''"'"'-fPIC'"'"'' \
-DTORCH_API_INCLUDE_EXTENSION_H '-DPYBIND11_COMPILER_TYPE="_gcc"' '-DPYBIND11_STDLIB="_libstdcpp"' '-DPYBIND11_BUILD_ABI="_cxxabi1011"' \
-DTORCH_EXTENSION_NAME=_ext -D_GLIBCXX_USE_CXX11_ABI=0 -gencode=arch=compute_70,code=sm_70 \
-ccbin /share/home/zhongzisha/anaconda3_py38/bin/x86_64-conda_cos6-linux-gnu-cc -std=c++14

fi

