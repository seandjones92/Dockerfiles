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
    cd ~ &&\
    rm -rf ~/dlang ~/onedrive &&\
    dnf group remove -y 'Development Tools' &&\
    dnf clean all &&\
    useradd -m onedriveuser

WORKDIR /home/onedriveuser

USER onedriveuser

CMD [ "/usr/local/bin/onedrive" ]