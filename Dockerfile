FROM fedora:36
LABEL maintainer="Christian Himmler <christian@himmlers.de>"

RUN dnf update -y --setopt=tsflags=nodocs && \
    dnf install -y --setopt=tsflags=nodocs texlive-scheme-full texlive-minted && \
    dnf clean all

WORKDIR /data
VOLUME ["/data"]
