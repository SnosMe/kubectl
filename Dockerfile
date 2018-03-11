FROM alpine:3.7
LABEL MAINTAINER="snosme"

ENV KUBECTL_VERSION="v1.9.3"

RUN apk add --no-cache curl gettext \
    && curl -L https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl \
    && apk del curl
