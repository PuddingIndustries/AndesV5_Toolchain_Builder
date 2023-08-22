FROM python:3-bullseye

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
    build-essential cmake xz-utils clang cppcheck clang-tidy

RUN mkdir -p /usr/local

COPY toolchain.tar.xz /opt/

RUN tar -xf /opt/toolchain.tar.xz --strip-components 1 -C /usr/local

RUN rm /opt/toolchain.tar.xz

RUN pip install codechecker
