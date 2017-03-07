FROM alpine:3.5

LABEL maintainer Lorenzo Adinolfi <info@lorenzoadinolfi.it>

## define environment variable ##
ENV MAILCATCHER_VERSION=0.6.4
ENV MAILCATCHER_IP=0.0.0.0

## update package index and install ruby ##
RUN apk add --no-cache ruby ruby-bigdecimal ruby-json libstdc++ sqlite-libs ca-certificates openssl

## install build dependencies ##
## install Mailcatcher ##
## clean ##
RUN apk add --no-cache --virtual .build-deps \
        ruby-dev \
        make g++ \
        sqlite-dev \
        && gem install -v ${MAILCATCHER_VERSION} mailcatcher --no-ri --no-rdoc \
        && apk del .build-deps \
		&& rm -rf /var/cache/apk/*

EXPOSE 1080

CMD mailcatcher --foreground --ip ${MAILCATCHER_IP}
