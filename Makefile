.PHONY: build-server run-server

build-server:
	docker image build -t resume-template .

run-server:
	docker run --rm --name resume-template -v "$PWD":/home/app -p 4000:4000 resume-template
