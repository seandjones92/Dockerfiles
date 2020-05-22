FROM centos:7
RUN yum install -y freerdp libxkbfile gtk2 libXScrnSaver libXtst gdk-pixbuf2 wget atk cairo libv4l libuuid speex libtheora gstreamer1-vaapi python python3
RUN yum clean all
RUN cd ~ 
RUN wget https://download3.vmware.com/software/view/viewclients/CART21FQ1/VMware-Horizon-Client-5.4.1-15988340.x64.bundle 
RUN chmod 755 VMware*.bundle
RUN env TERM=dumb VMWARE_EULAS_AGREED=yes ./VMware*.bundle --console --required
CMD [ "/usr/bin/vmware-view" ]
