#!/bin/sh

if [ -z "$1" ]; then
    dir=$(pwd)
else
    dir="$1"
fi

mkdir -p "${dir}/json"
cd "${dir}/json"

curl --remote-name-all 'https://isbn.radiohead.com/lib/{ph,bends,okc,kida,amnesiac,httt,ir,tkol,amsp}.json'

cd - > /dev/null
