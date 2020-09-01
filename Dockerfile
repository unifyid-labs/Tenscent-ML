FROM python:2.7.18-slim-buster

LABEL maintainer="Sang Han <sanghan@protonmail.com>"

ARG NB_USER=jovyan
ARG NB_UID=100

ENV USER=${NB_USER} HOME=/home/${NB_USER}

RUN set -ex \
    adduser --disabled-password \
        --gecos "Default user" \
        --uid ${NB_UID} ${NB_USER}

WORKDIR "${HOME}"
USER "${USER}"
COPY . "${HOME}"

RUN set -ex \
    && pip install --no-cache --upgrade pip setuptools wheel \
    && pip install --no-cache \
        jupyterlab \
        matplotlib \
        notebook \
        numpy \
        opencv-python \
        tensorflow==1.6.0

