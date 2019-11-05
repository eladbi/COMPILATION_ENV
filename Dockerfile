FROM ubuntu:18.04

RUN cat /etc/lsb-release

RUN apt update; \
	apt install -y default-jre; \ 
	apt install -y default-jdk; \
	apt install jflex;

RUN apt install --reinstall make;

WORKDIR /home/COMPILATION

COPY ./COMPILATION .

CMD ["/bin/bash"]