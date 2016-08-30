FROM debian:jessie

MAINTAINER Chowkidar <dev@chowkidar.io>

ENV DEBIAN_FRONTEND=noninteractive

RUN echo "deb http://httpredir.debian.org/debian jessie contrib non-free" > /etc/apt/sources.list.d/nonfree.list && \
    echo "deb http://httpredir.debian.org/debian jessie-updates contrib non-free" >> /etc/apt/sources.list.d/nonfree.list && \
    echo "deb http://security.debian.org jessie/updates contrib non-free" >> /etc/apt/sources.list.d/nonfree.list && \
    apt-get update && \
    apt-get -y install devscripts build-essential debhelper && \
    useradd	-m -u $UID -g $GID builder &&

CMD su - builder