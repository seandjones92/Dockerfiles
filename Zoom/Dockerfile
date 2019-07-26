# docker run -d --name zoom --hostname zoom-container -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix/ zoom
FROM centos:7

RUN yum update -y && yum install -y https://zoom.us/client/latest/zoom_x86_64.rpm && useradd -m zoom

WORKDIR /home/zoom

USER zoom
CMD [ "/usr/bin/zoom" ]
