FROM alpine:3.2

RUN apk add -U alpine-sdk
ENV VERSION 4.2.2

RUN curl -L http://ftpmirror.gnu.org/sed/sed-$VERSION.tar.bz2 | bunzip2 | tar -x \
    && cd sed-$VERSION/ \
    && CFLAGS="-static" ./configure \
    && make

RUN tar -czf /tmp/linux-sed-$VERSION.tgz -C sed-$VERSION/sed/ sed

CMD cat /tmp/linux-sed-$VERSION.tgz
