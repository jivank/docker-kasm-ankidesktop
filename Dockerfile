FROM ghcr.io/linuxserver/baseimage-kasmvnc:debianbullseye
LABEL maintainer="Jivan Kulkarni <jivank@gmail.com>"

ENV TITLE=AnkiDesktop

RUN \
  apt-get update && \
  apt-get install -y \
  mpv \
  anki && \
  apt-get clean && \
  rm -rf \
    /var/lib/apt/lists/* \
    /tmp/*

COPY /root /

EXPOSE 3000

VOLUME /config

