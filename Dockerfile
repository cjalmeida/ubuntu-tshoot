FROM ubuntu:latest

#######
# base layer for build/dev/prod
#######
FROM ubuntu:20.04 as base

SHELL ["/bin/bash", "-c"]

# Install packages
RUN export DEBIAN_FRONTEND=noninteractive && apt-get update \
    && apt-get install -y --no-install-recommends \
        software-properties-common \
        curl wget vim make htop iproute2 dnsutils iputils-ping net-tools tcpdump \
        python3 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
