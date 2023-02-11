FROM python:3.11.2-bullseye

ENV DJANGO_USER=reinhardt
ENV PYTHONUNBUFFERED=true
ENV PYTHONPYCACHEPREFIX="/home/${DJANGO_USER}/.cache/pycache/"
ENV PATH="/home/${DJANGO_USER}/.local/bin:${PATH}"

RUN groupadd -g 1000 ${DJANGO_USER} && \
    useradd -m -u 1000 -g 1000 -s /bin/bash ${DJANGO_USER} && \
    echo "${DJANGO_USER} ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER ${DJANGO_USER}

RUN pip install pipx && \
    pipx install yamk==4.4.0 && \
    pipx install poetry==1.3.2
