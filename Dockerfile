FROM alpine:3.8

RUN apk update && apk add curl bash vim git alpine-sdk

RUN curl -sLf https://spacevim.org/install.sh | bash

COPY .viminfo /root/

WORKDIR /opt

ENTRYPOINT vim

