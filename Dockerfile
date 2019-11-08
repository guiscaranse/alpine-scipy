FROM python:3.7-alpine

LABEL maintainer Guilherme Scaranse <guiscaranse@gmail.com>

RUN apk --update add python3-dev gcc py3-numpy musl-dev libffi-dev && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

RUN pip3 install pandas numpy
