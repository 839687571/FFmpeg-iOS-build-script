#!/bin/sh


echo "start copy"

SOURCE_FILE="ffmpeg-X86_64"
DEST_FOLDER="build/universal/include"


COPYS="libavformat/network.h libavutil/libm.h libavformat/os_support.h 
libavutil/internal.h
libavutil/timer.h
 libavcodec/mathops.h"


for COPY in ${COPYS}
do
	cp -f -v ./${SOURCE_FILE}/$COPY ./${DEST_FOLDER}/$COPY
done



exit
