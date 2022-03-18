set CUDA_HOME=%CUDA_PATH%
set TORCH_CUDA_ARCH_LIST=7.5
set MMCV_WITH_OPS=1
set DISTUTILS_USE_SDK=1
set MAX_JOBS=4
python setup.py build_ext
python setup.py develop
pip list