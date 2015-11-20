##########################
## Alpine based OPENSSH ##
##########################
FROM frolvlad/alpine-oraclejdk8
MAINTAINER Chamunks <Chamunks@gmail.com>

RUN mkdir app/ \
    cd app \
    wget http://ci.lilypadmc.com/job/Go-Server-Connect/lastSuccessfulBuild/artifact/target/connect-linux-amd64 \
    chmod +x connect-linux-amd64

VOLUME /app/connect.yml

EXPOSE 5091
WORKDIR /app/
ENTRYPOINT  ["/bin/sh"]
CMD  ["/app/connect-linux-amd64"]
