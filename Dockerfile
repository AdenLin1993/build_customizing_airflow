# choose ubuntu:18.04 amd64 sys as production env
FROM docker.io/library/ubuntu@sha256:fc0d6af5ab38dab33aa53643c4c4b312c6cd1f044c1a2229b2743b252b9689fc
# choose user
USER root
# Update apt app repository list
# Install the vim tool
# Install the Traceroute tool
# Install the Telnet  tool
# Install the ping  tool
# Install the wget  tool
# install gcc, make, automake, autoconf, libtool
# Install libffi-dev, zlib1g, zlib1g.dev(unzip)
# Install the SSL tool
RUN apt update; \
    apt install -y vim; \
    apt install -y traceroute; \
    apt install -y telnet; \
    apt install -y iputils-ping; \
    apt install -y wget; \
    apt install -y gcc make automake autoconf libtool; \
    apt install -y libffi-dev zlib1g zlib1g.dev; \
    apt install -y openssl libssl-dev;
