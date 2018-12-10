# podman run -it --rm --privileged=true -v /home/$USER/:/root dev-cli "$@"

FROM fedora:29

RUN dnf install -y vim python2 python3 zsh git && \
    dnf clean all

WORKDIR /root

CMD /usr/bin/zsh
