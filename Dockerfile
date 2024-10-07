FROM pytorch/pytorch:2.4.1-cuda12.1-cudnn9-runtime

RUN apt-get -y update --allow-releaseinfo-change
RUN apt-get -y install git
RUN apt-get -y install ffmpeg libsm6 libxext6
RUN apt-get -y install curl vim p7zip-full

# mkdir for forge stable diffusion repo
RUN mkdir /sd/
RUN cd /sd/ && curl -L -O https://github.com/lllyasviel/stable-diffusion-webui-forge/releases/download/latest/webui_forge_cu121_torch231.7z
RUN cd /sd/ && p7zip -d webui_forge_cu121_torch231.7z

# # Install Requirements
RUN pip install -r /sd/webui/requirements_versions.txt