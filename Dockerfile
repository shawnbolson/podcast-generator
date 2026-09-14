FROM ubuntu:26.04

RUN apt-get update -y
RUN apt-get install python3.10 -y
RUN apt-get install python3-pip -y
RUN apt-get install git -y

RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [/entrypoint.sh]
