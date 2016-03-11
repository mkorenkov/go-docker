FROM mkorenkov/alpine 

RUN curl -o /tmp/go.tar.gz https://storage.googleapis.com/golang/go1.6.linux-amd64.tar.gz && \
    cd /tmp && tar -xzf go.tar.gz && rm /tmp/go.tar.gz && mv /tmp/$(ls /tmp/|tail -1) /usr/local/go

VOLUME ["/opt/go/src", "/opt/go/bin"]
ENV GOOS=linux \
    GOARCH=amd64 \
    GOPATH=/opt/go
WORKDIR /opt/go
ENTRYPOINT ["/usr/local/go/bin/go"]
