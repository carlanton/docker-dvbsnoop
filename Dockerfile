FROM debian:sid
MAINTAINER Anton Lindström <carlantonlindstrom@gmail.com>
RUN apt-get update && \
    apt-get install -y dvbsnoop && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "dvbsnoop" ]
