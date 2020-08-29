#!/bin/bash

python2 create_repository.py \
        --datadir=../docs \
        ../repository.fr33p0rt \
        ../../kodi-plugin.video.poda/plugin.video.poda \
        ../../kodi-plugin.video.com.pornky/plugin.video.com.pornky

cd ../docs
apindex .
