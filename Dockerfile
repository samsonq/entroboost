FROM continuumio/miniconda:4.5.4

USER root

RUN apt-get update && \
    apt-get upgrade -y && \
    apt install -y python3

COPY requirements.txt ./entroboost/requirements.txt
RUN pip install -r ./entroboost/requirements.txt