# set up speechmatics image

# Login to speechmatics docker
speechmatics-docker-login:
	docker login https://speechmatics-docker-demo.jfrog.io

pull-speechmatics-image:
	docker pull speechmatics-docker-demo.jfrog.io/batch-asr-transcriber-de-hydra:1.0.0.16

build-custom-image:
	@echo build and tag image custom image
	docker build -t speechmatics-custom/transcriber-de:1.00 .



