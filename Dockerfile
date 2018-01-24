FROM alpine:latest

ENV ASSUME_ROLE_VERSION 0.3.2

RUN wget -O /usr/local/bin/assume-role https://github.com/remind101/assume-role/releases/download/${ASSUME_ROLE_VERSION}/assume-role-Linux

RUN apk add --no-cache \
    py-pip \
    python2-dev \
    py2-lxml \
    libxslt-dev \
    gcc \
    libxml2-dev \
    musl-dev

RUN pip install \
    aws-google-auth \
    sceptre

CMD /bin/bash
