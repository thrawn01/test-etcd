.PHONY: docker
.DEFAULT_GOAL := docker

docker:
	docker build .
	docker build Dockerfile-clientv3 .

