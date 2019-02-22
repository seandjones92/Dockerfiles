FROM ubuntu:16.04

COPY azuredatastudio-linux-1.4.5.deb /azuredatastudio-linux-1.4.5.deb

RUN apt -y update && apt -y upgrade && \
    apt -y install \
    libasound2 \
    libxss1 \
    /azuredatastudio-linux-1.4.5.deb && \
    rm /azuredatastudio-linux-1.4.5.deb && \
    useradd -m datauser

WORKDIR /home/datauser

USER datauser