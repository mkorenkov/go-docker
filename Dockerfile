FROM mkorenkov/alpine-sdk 

RUN export GO_VERSION='1.7.3' && curl -o /tmp/go.tar.gz "https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz" && \
    cd /tmp && tar -xzf go.tar.gz && rm /tmp/go.tar.gz && mv /tmp/$(ls /tmp/|tail -1) /usr/local/go

VOLUME ["/opt/go/src", "/opt/go/bin"]
ENV GOOS=linux \
    GOARCH=amd64 \
    GOPATH=/opt/go \
    CGO_ENABLED=0 \
    PATH=/usr/local/go/bin/:$PATH

ENTRYPOINT ["/usr/local/go/bin/go"]
