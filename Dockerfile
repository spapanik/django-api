FROM spapanik/fedora-python:1.0.0

ENV DJANGO_USER=${PYTHON_USER}

USER root

RUN dnf --assumeyes --nodocs --setopt install_weak_deps=False install libpq-devel && \
    dnf --assumeyes clean all

USER ${DJANGO_USER}
