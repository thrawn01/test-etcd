.PHONY: v3.4.13 master all
.DEFAULT_GOAL := all

all: v3.4.13 master

master:
	-docker build .

v3.4.13:
	-docker build -f Dockerfile-clientv3 .

