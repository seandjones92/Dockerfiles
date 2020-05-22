FROM centos:7
RUN yum install -y freerdp libxkbfile gtk2 libXScrnSaver libXtst gdk-pixbuf2 wget atk cairo libv4l libuuid speex libtheora gstreamer1-vaapi python python3 &&\
    yum clean all &&\
    cd ~ &&\
    wget https://download3.vmware.com/software/view/viewclients/CART21FQ1/VMware-Horizon-Client-5.4.1-15988340.x64.bundle && \
    chmod 755 VMware*.bundle &&\
    env TERM=dumb VMWARE_EULAS_AGREED=yes ./VMware-Horizon-Client*.bundle --console --required
CMD [ "/usr/bin/vmware-view" ]
