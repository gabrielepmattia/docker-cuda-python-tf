FROM nvidia/cuda:11.2.0-cudnn8-runtime-ubuntu20.04

RUN mkdir /work
WORKDIR /work

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Rome

RUN apt-get update && apt-get install --no-install-recommends --no-install-suggests -y curl
RUN apt-get -y install python3
RUN apt-get -y install python3-pip
RUN apt-get -y install python3-tk

COPY requirements.txt /

RUN pip install -r /requirements.txt