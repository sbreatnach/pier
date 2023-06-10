FROM alpine:3.18

RUN apk add --no-cache curl git zip bash tar
ENV HUGO_VERSION 0.111.3
ENV NETLIFY_VERSION 0.4.0
RUN curl -L https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz | \
    tar -xz \
    && mv hugo /usr/bin/hugo \
    && chmod 755 /usr/bin/hugo
RUN curl -L https://github.com/netlify/netlifyctl/releases/download/v${NETLIFY_VERSION}/netlifyctl-linux-amd64-${NETLIFY_VERSION}.tar.gz | \
    tar -xz \
    && mv netlifyctl /usr/bin/netlifyctl \
    && chmod 755 /usr/bin/netlifyctl

ENTRYPOINT [ "/bin/bash", "-c" ]