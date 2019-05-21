# podman run -it --rm --privileged=true --name vmware-view --hostname view-container -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$DISPLAY vmware-view

FROM centos:7

RUN yum install -y freerdp libxkbfile gtk2 libXScrnSaver libXtst gdk-pixbuf2 wget atk cairo libv4l libuuid speex libtheora gstreamer1-vaapi &&\
    yum clean all &&\
    cd ~ &&\
    wget https://download3.vmware.com/software/view/viewclients/CART19FQ4/VMware-Horizon-Client-4.10.0-11053294.x64.bundle &&\
    chmod 755 VMware-Horizon-Client*.bundle &&\
    env TERM=dumb VMWARE_EULAS_AGREED=yes ./VMware-Horizon-Client*.bundle --console --required

CMD [ "/usr/bin/vmware-view" ]
