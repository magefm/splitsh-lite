IMAGE := splitsh/lite:dev

docker:
	@docker build -t $(IMAGE) .

build: docker
	@docker run -v $(PWD):/pwd -w /pwd --rm -it $(IMAGE) /bin/bash -c 'go get -d; go build -o splitsh-lite'
