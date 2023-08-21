FROM python:3-bullseye

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
    build-essential cmake xz-utils clang cppcheck clang-tidy

RUN mkdir -p /usr/local

ADD toolchain/* /usr/local/

RUN pip install codechecker