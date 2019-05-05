FROM alpine:latest
# add docker and ssh client tools
RUN apk add docker openssh-client
# clean up big binaries which are not needed for docker client
RUN rm -f /usr/bin/dockerd /usr/bin/docker-* /usr/bin/containerd /usr/bin/containerd-* /usr/bin/ctr /usr/bin/runc
