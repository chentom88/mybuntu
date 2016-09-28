FROM ubuntu:latest

RUN apt-get update && apt-get upgrade && apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y build-essential libssl-dev && apt-get install -y curl && apt-get install -y tmux \
    && apt-get install -y vim \
    && apt-get install -y software-properties-common && apt-get install -y python3-software-properties \ 
    && add-apt-repository ppa:ubuntu-lxc/lxd-stable && apt-get update \ 
    && apt-get install -y golang \
    && apt-get install -y nodejs \
    && apt-get install -y git-all

RUN mkdir workspace && cd workspace
RUN git clone https://github.com/chentom88/MyVim.git && cd MyVim && git submodule init && git submodule update \
    && cp -r .vim ~/ && cp .vimrc ~/ && cd ..
