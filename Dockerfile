FROM nvidia/cuda:11.8.0-base-ubuntu20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils

RUN apt-get -y update
RUN apt-get -y install git

# Install opencv dependencies
RUN apt-get install ffmpeg libsm6 libxext6  -y

# Setup Python
RUN apt-get -y install python3-dev
RUN apt-get -y install python3-pip

# Install Python libraries
RUN python3 -m pip install opencv-python

RUN python3 -m pip install tensorboard

RUN apt-get -y install libcurl4
RUN apt-get -y install mongodb

RUN mkdir -p /first_docker_env
WORKDIR /first_docker_env

