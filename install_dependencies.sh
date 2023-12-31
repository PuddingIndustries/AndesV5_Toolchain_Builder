#!/bin/sh

export DEBIAN_FRONTEND=noninteractive

apt-get -y install autoconf automake \
    autotools-dev curl python3 libmpc-dev libmpfr-dev \
    libgmp-dev gawk build-essential bison flex texinfo \
    gperf libtool patchutils bc zlib1g-dev libexpat-dev
