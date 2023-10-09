FROM pytorch/pytorch

WORKDIR /workspace/A1111

COPY . /workspace/A1111

RUN apt-get update && apt-get upgrade -y

RUN DEBIAN_FRONTEND=noninteractive apt-get install git zip unzip vim libglib2.0-0 libsm6 libxext6 libxrender-dev -y

RUN pip install -r requirements.txt && \
    pip install -r extensions/sd-webui-controlnet/requirements.txt