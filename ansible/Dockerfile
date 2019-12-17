# docker run --rm -it \
#            --hostname ansible-controller \
#            --name ansible-controller \
#            --volume $PWD:/home/ansible \
#            sdj92/ansible
FROM alpine
RUN apk add ansible && \
    adduser -D ansible
USER ansible
WORKDIR /home/ansible
ENTRYPOINT [ "/usr/bin/ansible" ]