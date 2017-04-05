#!/bin/sh


echo "start copy"

SOURCE_FILE="ffmpeg-3.2"
DEST_FOLDER="fat-ffmpeg/include"



COPYS="libavformat/network.h libavutil/libm.h libavformat/os_support.h 
libavutil/internal.h
libavutil/timer.h
 libavcodec/mathops.h
 libavformat/url.h"


for COPY in ${COPYS}
do
	cp -f -v ./${SOURCE_FILE}/$COPY ./${DEST_FOLDER}/$COPY
	#cp -f -v ./${SOURCE_FILE}/$COPY /${DEST_FOLDER}/$COPY
done



exit
