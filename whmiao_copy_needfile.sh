#!/bin/sh

# directories
SOURCE_FILE="ffmpeg-3.2"
THIN="thin"
ARCHS="x86_64"
SCRATCH="scratch"
DEST_FOLD="./$THIN/$ARCHS/include"

echo $DEST_FOLD

#:'
mkdir ./main_sourc

cp -f -v $SCRATCH/$ARCHS/config.h ./main_sourc/config.h

cp -f -v $SOURCE_FILE/cmdutils.c ./main_sourc/cmdutils.c
cp -f -v $SOURCE_FILE/cmdutils.h ./main_sourc/cmdutils.h
cp -f -v $SOURCE_FILE/cmdutils_common_opts.h ./main_sourc/cmdutils_common_opts.h


cp -f -v $SOURCE_FILE/ffmpeg.h ./main_sourc/ffmpeg.h 
cp -f -v $SOURCE_FILE/ffmpeg_filter.c ./main_sourc/ffmpeg_filter.c
cp -f -v $SOURCE_FILE/ffmpeg_opt.c ./main_sourc/ffmpeg_opt.c
cp -f -v $SOURCE_FILE/ffmpeg.c ./main_sourc/ffmpeg.c



cp -f -v $SOURCE_FILE/libavformat/ffm.h $DEST_FOLD/libavformat/ffm.h
cp -f -v $SOURCE_FILE/libavformat/network.h $DEST_FOLD/libavformat/network.h
cp -f -v $SOURCE_FILE/libavformat/os_support.h $DEST_FOLD/libavformat/os_support.h

cp -f -v $SOURCE_FILE/libavformat/url.h $DEST_FOLD/libavformat/url.h
cp -f -v $SOURCE_FILE/libavutil/libm.h $DEST_FOLD/libavutil/libm.h
cp -f -v $SOURCE_FILE/libavutil/internal.h $DEST_FOLD/libavutil/internal.h
cp -f -v $SOURCE_FILE/libavutil/timer.h $DEST_FOLD/libavutil/timer.h
#'
cp -f -v -r $DEST_FOLD/libavcodec  /Users/huiti123/ijkplayer-ios/ios/HTTranscoder/include/libavcodec
cp -f -r $DEST_FOLD/libavutil  /Users/huiti123/ijkplayer-ios/ios/HTTranscoder/include/libavutil
cp -f -v -r $DEST_FOLD/libavformat  /Users/huiti123/ijkplayer-ios/ios/HTTranscoder/include/libavformat
#cp -f -r $DEST_FOLD/libavutil  /Users/huiti123/ijkplayer-ios/ios/HTTranscoder/include/libavutil