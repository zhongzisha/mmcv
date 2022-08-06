#　rsync -avP  --exclude-from=/usr/exclude.list

rsync -av -e ssh \
--exclude='.eggs' --exclude='.git' --exclude='__pycache__' \
--exclude='mmcv.egg-info' ../mmcv --exclude='*.pyc' \
ubuntu@10.0.7.35:/media/ubuntu/Documents/gd/