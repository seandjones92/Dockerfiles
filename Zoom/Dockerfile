FROM centos:7

RUN yum update -y && yum install -y https://zoom.us/client/latest/zoom_x86_64.rpm && useradd -m zoom

WORKDIR /home/zoom

USER zoom
CMD [ "/usr/bin/zoom" ]
