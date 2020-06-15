
#!/bin/sh
cd /Users/huiti123/Desktop/mygitee/FFmpeg

# 编译参数参考:
# https://blog.csdn.net/fengsh998/article/details/79443503

# 离线文档选择
# –disable-doc

set -x

TEST_FLAG="/configure    -–disable-doc -–disable-avdevice  \
-–disable-postproc \
–-disable-avfilter \
–-disable-encoders \
–-disable-decoders \
–-disable-hwaccels "


chmod +x ./configure 
CONFIG_FLAGS="--enable-cross-compile --enable-debug  \
                 --disable-doc --enable-pic --disable-iconv --disable-asm \
                 --enable-ffmpeg  –-disable-avfilter –-disable-encoders"




./configure  --enable-cross-compile --enable-debug --disable-release \
                 --disable-doc --enable-pic --disable-iconv --disable-asm \
              --enable-ffmpeg  

 
 chmod +x ./configure 
 #./configure --disable-everything