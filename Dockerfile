FROM ubuntu:latest

ARG SCRIPTPATH=/home/ubuntu/shell_scripts

ENV SCRIPTPATH=$SCRIPTPATH

RUN apt-get update

WORKDIR /home/guna

COPY shell_scripts/scr12.sh /home/guna

RUN chmod +x scr12.sh

ENTRYPOINT ["/bin/bash", "/home/guna/scr12.sh"]


#ADD https://dlcdn.apache.org/tomcat/tomcat-11/v11.0.5/bin/apache-tomcat-11.0.5-deployer.tar.gz .
#RUN apt update -y
#RUN apt install curl -y
#RUN apt install wget -y
#RUN apt install tree -y
