FROM alpine:latest

RUN apk update

ENV JAVA_VERSION="17"
RUN apk add openjdk${JAVA_VERSION}-jre

RUN apk add bash

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

VOLUME /server
EXPOSE 25565

ENTRYPOINT ["/entrypoint.sh"]
#ENTRYPOINT ["env"]
