FROM centos:7

RUN yum install -y freerdp libxkbfile gtk2 libXScrnSaver libXtst gdk-pixbuf2 wget atk cairo libv4l libuuid speex libtheora gstreamer1-vaapi &&\
    yum clean all &&\
    cd ~ &&\
    wget https://download3.vmware.com/software/view/viewclients/CART20FQ2/VMware-Horizon-Client-5.1.0-13956721.x64.bundle &&\
    chmod 755 VMware-Horizon-Client*.bundle &&\
    env TERM=dumb VMWARE_EULAS_AGREED=yes ./VMware-Horizon-Client*.bundle --console --required &&\
    useradd -m viewuser

WORKDIR /home/viewuser

USER viewuser

CMD [ "/usr/bin/vmware-view" ]
