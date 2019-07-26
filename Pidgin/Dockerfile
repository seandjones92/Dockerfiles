# pidgin needs read only access to "/etc/machine-id" in order to function
FROM centos:7

RUN yum update -y && \
    yum install pidgin pidgin-sipe && \
    useradd -m pidgin

WORKDIR pidgin

USER pidgin
CMD [ "/usr/bin/pidgin" ]
