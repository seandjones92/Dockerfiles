# pidgin needs read only access to "/etc/machine-id" in order to function
# docker run -d --name pidgin --hostname pidgin-container -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v /etc/machine-id:/etc/machine-id:ro pidgin
FROM centos:7

RUN yum update -y && \
    yum install -y pidgin pidgin-sipe && \
    useradd -m pidgin

WORKDIR /home/pidgin

USER pidgin
CMD [ "/usr/bin/pidgin" ]
