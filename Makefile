.PHONY: docker-image docker-run

docker-image:
	docker image build -t resume-template .

docker-run: docker-image
	docker run --rm --name resume-template -p 4000:4000 resume-template
