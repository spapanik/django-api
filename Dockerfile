FROM spapanik/fedora-python:1.1.1

ENV DJANGO_USER=${PYTHON_USER}

USER root

RUN dnf makecache --refresh && \
    dnf --assumeyes --nodocs --setopt install_weak_deps=False install libpq-devel && \
    dnf --assumeyes clean all

USER ${DJANGO_USER}
