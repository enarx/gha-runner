FROM ubuntu:latest

RUN apt -y update
RUN apt -y upgrade

COPY start.sh /root/
CMD /root/start.sh
