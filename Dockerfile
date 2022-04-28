FROM bentoml/bento-server:1.0.0a1-python3.9-centos7-cudnn

RUN yum -y install mesa-libGL

RUN pip install --no-cache-dir torch==1.10.0+cu111 torchvision==0.11.0+cu111 -f https://download.pytorch.org/whl/torch_stable.html

RUN pip install --no-cache-dir detectron2 -f https://dl.fbaipublicfiles.com/detectron2/wheels/cu113/torch1.10/index.html