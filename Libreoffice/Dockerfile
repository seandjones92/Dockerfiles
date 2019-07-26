FROM centos:7

RUN yum update -y && \
    yum install -y libreoffice && \
    useradd -m libreoffice

WORKDIR /home/libreoffice

USER libreoffice
CMD [ "/usr/bin/libreoffice" ]
