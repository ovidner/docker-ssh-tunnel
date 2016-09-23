FROM alpine:3.4
MAINTAINER Olle Vidner <olle@vidner.se>

RUN apk add --no-cache openssh-client && mkdir -p /root/.ssh

COPY ./entrypoint.sh /src/entrypoint.sh

ENV TUNNEL_PORT=22 LOCAL_PORT=2222
EXPOSE 2222
ENTRYPOINT ["/src/entrypoint.sh"]
