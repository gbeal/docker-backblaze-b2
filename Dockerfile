FROM alpine:latest AS build

WORKDIR /root

ENV B2_ACCOUNT_INFO /root/.b2/b2_account_info.sqlite

RUN apk update \
    && apk add git python3 \
    && python3 -m ensurepip \
    && python3 -m pip install --upgrade pip \
    && pip3 install --no-cache-dir b2 \
    && mkdir ./.b2

VOLUME ./.b2

