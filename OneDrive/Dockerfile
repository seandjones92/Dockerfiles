FROM fedora:29

RUN dnf groupinstall -y 'Development Tools' &&\
    dnf install -y libcurl-devel sqlite-devel xz &&\
    curl -fsS https://dlang.org/install.sh | bash -s dmd &&\
    source ~/dlang/dmd-*/activate &&\
    cd ~ &&\
    git clone https://github.com/abraunegg/onedrive.git &&\
    cd onedrive &&\
    make &&\
    make install &&\
    dnf groupremove -y 'Development Tools' &&\
    dnf remove -y libcurl-devel sqlite-devel xz &&\
    dnf clean all &&\
    useradd -u 1000 user &&\
    usermod -aG users user

USER 1000

WORKDIR /home/user

VOLUME /home/user

CMD /usr/local/bin/onedrive "$@"
