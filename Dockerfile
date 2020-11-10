# Build image
FROM golang:1.15.4 as build

WORKDIR /go/src
ADD . /go/src

RUN go get go.etcd.io/etcd/client/v3
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -installsuffix cgo \
    -o /test-etcd /go/src/main.go