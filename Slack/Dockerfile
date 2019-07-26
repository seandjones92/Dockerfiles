FROM centos:7

RUN yum update -y && \
    yum install -y https://downloads.slack-edge.com/linux_releases/slack-4.0.0-0.1.fc21.x86_64.rpm \
    alsa-lib firefox xdg-utils && \
    useradd -m slack

WORKDIR /home/slack

USER slack
CMD [ "/usr/bin/slack" ]
