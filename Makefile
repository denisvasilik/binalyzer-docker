DOCKER_IMAGE_NAME=denisvasilik/binalyzer:latest
DOCKER_CONTAINER_NAME=binalyzer

all:

build:
	docker build -t ${DOCKER_IMAGE_NAME} -f Dockerfile .

run:
	docker run -d --name ${DOCKER_CONTAINER_NAME} -p 8000:8000 ${DOCKER_IMAGE_NAME}

clean:
	docker rm ${DOCKER_CONTAINER_NAME} -f |:
	docker image rm ${DOCKER_IMAGE_NAME} |:

.PHONY: build run clean
