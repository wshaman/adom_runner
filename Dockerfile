FROM ubuntu:18.04
RUN apt-get -y update && apt-get -y upgrade && apt-get install -y xterm
RUN apt-get -y install libsdl2-image-2.0-0 libsdl2-net-2.0-0 libsdl2-mixer-2.0-0  libsdl2-ttf-2.0-0 \
	libluajit-5.1-2 libnghttp2-14 librtmp1 libpsl5 libssl1.1 libgssapi-krb5-2 libldap-2.4-2
# && apt-get -y install xterm libsdl2-{image,net,mixer,ttf}-2.0-0 libluajit-5.1-2 libnghttp2-14 libidn2-0 librtmp1 
WORKDIR /GOG\ Games/ADOM\ Ancient\ Domains\ Of\ Mystery\ English
CMD ["./start.sh"]
