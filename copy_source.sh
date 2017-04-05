#!/bin/sh


echo "start copy source "
set -ex

SOURCE_FILE="ffmpeg-3.2"
SCRATHC_FOLDER="scrath-ffmpeg"
DEST_FOLDER="main_source_"

ARCHS="arm64 x86_64 i386 armv7"


if [ ! -d ${DEST_FOLDER} ]; then
  mkdir ${DEST_FOLDER}
fi


SOURCES="
cmdutils_common_opts.h
cmdutils.c
cmdutils.h
ffmpeg_filter.c
ffmpeg_opt.c
ffmpeg_videotoolbox.c
ffmpeg.c
ffmpeg.h
"


for COPY in ${SOURCES}
do
	cp -f -v ./${SOURCE_FILE}/$COPY ./${DEST_FOLDER}/$COPY
done


if[ "$*" ]
then 
	ARCHS="$*"
fi

cp -f -v SOURCESSOURCES

exit
