.PHONY: docker-image docker-run docker-stop

docker-image:
	docker image build -t resume-template .

docker-stop:
	@docker rm -f resume-template >/dev/null 2>&1 || true

docker-run: docker-image
	@docker rm -f resume-template >/dev/null 2>&1 || true
	docker run --rm --name resume-template -p 4000:4000 resume-template
