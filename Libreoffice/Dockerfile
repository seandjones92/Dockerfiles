# docker run -d --name libreoffice --hostname libreoffice-container -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v $HOME/Documents:/home/libreoffice/Documents libreoffice
FROM centos:7

RUN yum update -y && \
    yum install -y libreoffice && \
    useradd -m libreoffice

WORKDIR /home/libreoffice

USER libreoffice
CMD [ "/usr/bin/libreoffice" ]
