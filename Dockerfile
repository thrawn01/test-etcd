# Build image
FROM golang:1.15.4 as build

WORKDIR /go/src
ADD . /go/src

RUN go get go.etcd.io/etcd/client/v3
