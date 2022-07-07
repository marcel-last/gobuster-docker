# https://hub.docker.com/_/alpine
FROM alpine:3.16@sha256:4ff3ca91275773af45cb4b0834e12b7eb47d1c18f770a0b151381cd227f4c253

RUN set -euxo pipefail && \
    adduser -S -D -H --gecos "" -s /bin/sh gobuster && \
    apk add --no-cache tini ca-certificates && \
    apk add --no-cache gobuster --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing/

USER gobuster

ENTRYPOINT ["/sbin/tini", "--", "/usr/bin/gobuster"]
