FROM ubuntu:20.10

MAINTAINER oak <oak@****.com>

RUN apt-get update && apt-get install -y git gcc g++ cmake

RUN apt-get install -y zip unzip curl wget

WORKDIR /opt/

RUN git clone https://github.com/llvm/llvm-project.git

WORKDIR /opt/llvm-project

RUN cmake -S llvm -B build

WORKDIR /opt/llvm-project/build
