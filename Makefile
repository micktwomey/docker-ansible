export DOCKER_HOST
VERSION=0.0.1
NAME=micktwomey/ansible
TAG=$(NAME):$(VERSION)

all: build

build:
	docker build -t $(TAG) .
	docker tag $(TAG) $(NAME):latest

shell:
	docker run --rm -i -t --entrypoint=/bin/bash $(TAG) -i

push:
	docker push $(TAG)
	docker push $(NAME):latest
