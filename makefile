# set up speechmatics image

# Login to speechmatics docker
speechmatics-docker-login:
	docker login https://speechmatics-docker-demo.jfrog.io

pull-speechmatics-image:
	docker pull speechmatics-docker-demo.jfrog.io/batch-asr-transcriber-en-hydra:1.0.0.16 

build-custom-image:
	@echo build and tag image custom image
	docker build -t speechmatics-custom/transcriber-en:1.00 .

## Docker run commands

# basic docker run
docker-run:
	docker run -i \
	speechmatics-custom/transcriber-en:1.00

# basic docker run
docker-run-file:
	docker run -i \
	-v /Users/okechukwu.uguru/Documents/bowshank/speechmatics/license.json:/license.json \
	speechmatics-custom/transcriber-en:1.00



