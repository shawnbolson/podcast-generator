FROM ubuntu:latest

RUN apt upgrade && apt-get update
RUN apt update && apt install -y \
  python3.14 \
  python3-pip \
  git

RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [/entrypoint.sh]
