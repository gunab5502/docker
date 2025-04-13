FROM ubuntu:latest

ARG SCRIPTPATH=/home/ubuntu/shell_scripts

ENV SCRIPTPATH=$SCRIPTPATH

RUN apt-get update

WORKDIR /home/guna

COPY shell_scripts/scr12.sh /home/guna

RUN chmod +x scr12.sh

ENTRYPOINT ["/bin/bash", "/home/guna/scr12.sh"]

