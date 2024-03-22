FROM alpine

LABEL maintainer="Smit Shetye <virtualwebenv@gmail.com>"


RUN apk add --no-cache beanstalkd

EXPOSE 11300
ENTRYPOINT ["/usr/bin/beanstalkd"]
