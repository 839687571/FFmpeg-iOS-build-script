#! /usr/bin/env bash
set -ex

FF_ALL_ARCHS="armv7 arm64 i386 x86_64"
STRATCH_FFMPEG="scratch-ffmpeg"
FAT_FFMPEG="fat-ffmpeg"

do_lipo_all () {


    ANY_ARCH=
    for ARCH in $FF_ALL_ARCHS
    do
        ARCH_INC_DIR="$STRATCH_FFMPEG/$ARCH"
        if [ -d "$ARCH_INC_DIR" ]; then

            UNI_INC_DIR="$FAT_FFMPEG/include"

            mkdir -p "$UNI_INC_DIR/libavutil/$ARCH"
            cp -f "$ARCH_INC_DIR/libavutil/avconfig.h"  "$UNI_INC_DIR/libavutil/$ARCH/avconfig.h"
            cp -f tools/avconfig.h                      "$UNI_INC_DIR/libavutil/avconfig.h"
            cp -f "$ARCH_INC_DIR/libavutil/ffversion.h" "$UNI_INC_DIR/libavutil/$ARCH/ffversion.h"
            cp -f tools/ffversion.h                     "$UNI_INC_DIR/libavutil/ffversion.h"
            mkdir -p "$UNI_INC_DIR/libffmpeg/$ARCH"
            cp -f "$ARCH_INC_DIR/config.h"    "$UNI_INC_DIR/libffmpeg/$ARCH/config.h"
            cp -f tools/config.h              "$UNI_INC_DIR/libffmpeg/config.h"
        fi
    done
}

echo "start lipo"
do_lipo_all