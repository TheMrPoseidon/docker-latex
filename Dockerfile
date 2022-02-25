FROM fedora:35
LABEL maintainer="Christian Himmler <christian@himmlers.de>"

RUN dnf update -y --setopt=tsflags=nodocs && \
    dnf install -y --setopt=tsflags=nodocs texlive-scheme-full python3 python3-pip && \
    dnf clean all

RUN pip install pygments

WORKDIR /data
VOLUME ['/data']