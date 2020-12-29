FROM debian:10

LABEL maintainer="Oliver Kett <spam@broken-wire.de>"

ENTRYPOINT [""]

ENV PY_COLORS=1

RUN apt update && \
  apt upgrade -y && \
  apt install -y python3-pip openssh-client && \
  pip3 install ansible lxml jxmlease junos-eznc netaddr && \
  ansible-galaxy collection install junipernetworks.junos && \
  apt-get clean 
