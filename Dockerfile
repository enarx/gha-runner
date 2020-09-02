FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt -y update
RUN apt -y install curl
RUN apt -y install python3
RUN apt -y install git
RUN apt -y install vim
RUN apt -y install gcc clang
RUN apt -y install libicu66
RUN apt -y install pkg-config
RUN apt -y install make
RUN apt -y install libssl-dev
RUN apt -y install sudo

RUN apt -y update
RUN apt -y upgrade

COPY start.sh /root/
CMD /root/start.sh
