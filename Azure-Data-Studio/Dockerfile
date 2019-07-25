FROM ubuntu:16.04

COPY azuredatastudio-linux-1.9.0.deb /azuredatastudio-linux-1.9.0.deb

RUN apt -y update && apt -y upgrade && \
    apt -y install \
    libasound2 \
    libxss1 \
    /azuredatastudio-linux-1.9.0.deb && \
    rm /azuredatastudio-linux-1.9.0.deb && \
    useradd -m datauser

WORKDIR /home/datauser

USER datauser