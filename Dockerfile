FROM jupyter/base-notebook:python-3.8.6

LABEL maintainer="jens@nfft.org"

USER root

RUN apt-get update -y \
    && apt-get upgrade -y \
    && apt-get -y dist-upgrade \
    && apt-get clean \
    && pip install --no-cache-dir -U pip

RUN pip install --no-cache-dir viewscad \
    && apt-get install -y openscad \
    && apt-get clean

USER jovyan
