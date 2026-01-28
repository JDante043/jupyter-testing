# This dockerfile contains a python environment. It uses debian 13 stable, codenamed "trixie"
# An anaconda installation is also provided to manage jupyter and other future applications
FROM python:3.13.11-trixie

RUN useradd -m worker
WORKDIR /home/worker

RUN curl -O https://repo.anaconda.com/archive/Anaconda3-2025.12-2-Linux-x86_64.sh && \
bash Anaconda3-2025.12-2-Linux-x86_64.sh -b -p /opt/conda && \
rm Anaconda3-2025.12-2-Linux-x86_64.sh

ENV PATH="$PATH:/opt/conda/bin"

RUN conda config --set plugins.auto_accept_tos yes && conda create -n testing python=3.13.11 jupyter -y

EXPOSE 8888

USER worker
CMD conda run -n testing jupyter notebook --ip 0.0.0.0 --no-browser