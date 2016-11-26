NAME=sprinkle
IMAGE=vidarh/${NAME}
OPTS=-v "${PWD}":/usr/src/app -v ${PWD}/keys:/root/.ssh
DR=docker run -ti --rm ${OPTS} ${IMAGE}

all: bundle build install

bundle:
	docker run --rm -v "${PWD}":/usr/src/app -w /usr/src/app ruby:2.3 bundle install

build:
	docker build -t ${IMAGE} .

cli:
	docker run -ti --rm ${OPTS} --entrypoint '/bin/bash' ${IMAGE} -l

push:
	docker tag -f ${IMAGE} ${IMAGE}:latest
	docker push ${IMAGE}:latest

install:
	sudo cp sprinkle /usr/local/bin
