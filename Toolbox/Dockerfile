# docker build --build-arg username=$(whoami) --build-arg userid=$(id -u $(whoami)) -t toolbox .
# docker run -it --name toolbox --hostname toolbox -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v $HOME:$HOME -e DISPLAY=:0 toolbox
FROM fedora:29

ARG username=buster
ARG userid=1000

RUN dnf update -y && \
    dnf install -y \
    sudo passwd wget man-db hostname && \
    useradd -m ${username} -u ${userid} -U && \
    usermod -aG wheel ${username} && \
    passwd -d ${username} && \
    passwd -d root

WORKDIR /home/${username}

USER ${username}

CMD ["/bin/bash"]