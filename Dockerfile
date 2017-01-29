FROM ubuntu:xenial

MAINTAINER luxaeterna 

RUN apt update && \
	apt upgrade -y && \
	apt install git wget -y && \
	wget https://github.com/jgm/pandoc/releases/download/1.19.1/pandoc-1.19.1-1-amd64.deb && \
	dpkg -i pandoc-1.19.1-1-amd64.deb && \
	git clone https://github.com/imarin2/Opentotum.wiki.git && \
	mkdir /root/output
	
ADD https://github.com/LuxAetern/Docker-Markdown2Dokuwiki/blob/master/scripts/clone.sh /root/clone.sh
VOLUME /root/output