#!/bin/sh

docker run -itd \
    --platform linux/amd64 \
    -p 13389:3389 \
    --ulimit nofile=8192 \
    --name DESKTOP \
    wanxp/wechatbot-watch-requests

