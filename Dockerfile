FROM python:2.7.18-slim-buster

LABEL maintainer="Sang Han <sanghan@protonmail.com>"

ARG NB_USER=jovyan
ARG NB_UID=1000

USER root
ENV USER=${NB_USER} HOME=/home/${NB_USER}
COPY . ${HOME}

ADD "https://storage.googleapis.com/unifyid-ml-vcm/models/tencent-ml-images/checkpoints/model.ckpt.tar.gz" "checkpoints/"

RUN set -ex \
    && adduser --disabled-password \
        --gecos "Default user" \
        --uid ${NB_UID} ${NB_USER} \
    && chown -R ${NB_UID} ${HOME} \
    && pip install --no-cache --upgrade pip setuptools wheel \
    && pip install --no-cache \
        jupyterlab \
        matplotlib \
        notebook \
        numpy \
        opencv-python \
        tensorflow==1.6.0

USER ${USER}
WORKDIR ${HOME}
