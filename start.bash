#!/bin/bash
podman build -t myadom .
podman run -it -v /tmp/.X11-unix:/tmp/.X11-unix \
	-v ${HOME}/GOG\ Games/:/GOG\ Games \
	-e DISPLAY=${DISPLAY} \
	--device=/dev/dri:/dev/dri \
	--device /dev/snd \
	myadom

