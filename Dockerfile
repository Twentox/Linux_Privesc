FROM ubuntu:latest

RUN apt-get update -y && apt-get upgrade -y
RUN apt install sudo -y 

RUN useradd -m -s /bin/bash erik
RUN useradd -m -s /bin/bash felix

RUN chown felix /usr/bin/find && chmod u+s /usr/bin/find

ADD 00_privesc /etc/sudoers.d/

USER $USERNAME
