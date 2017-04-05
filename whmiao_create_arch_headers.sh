#!/bin/sh

# directories

echo $1
echo $2

outputdir="./frameworks"
mkdir  outputdir


var=$1
outfile=${var##*/}


echo $outfile

lipo -create \
$1 \
$2 \
-output ./outputdir/$outfile
