FROM frolvlad/alpine-glibc

RUN apk add --no-cache bash
RUN apk add linux-headers

RUN mkdir /usr/java

COPY jre-8u201-linux-x64.tar.gz /usr/java/jre-8u201-linux-x64.tar.gz
COPY Miniconda3-latest-Linux-x86_64.sh Miniconda3-latest-Linux-x86_64.sh

RUN cd /usr/java && \
    tar zxvf jre-8u201-linux-x64.tar.gz && \
    rm jre-8u201-linux-x64.tar.gz 

ENV PATH="${PATH}:/usr/java/jre1.8.0_201/bin/"


RUN /bin/bash Miniconda3-latest-Linux-x86_64.sh -f -b -p miniconda && \
    rm Miniconda3-latest-Linux-x86_64.sh

RUN miniconda/bin/conda config --add channels defaults
RUN miniconda/bin/conda config --add channels bioconda
RUN miniconda/bin/conda config --add channels conda-forge
RUN miniconda/bin/conda install -c bioconda jalview
