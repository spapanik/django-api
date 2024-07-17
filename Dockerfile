FROM spapanik/fedora-python:1.1.1

USER root

RUN dnf makecache --refresh && \
    dnf --assumeyes --nodocs --setopt install_weak_deps=False install \
    postgresql && \
    dnf --assumeyes clean all

USER ${PYTHON_USER}
