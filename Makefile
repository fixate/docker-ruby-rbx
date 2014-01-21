all: build

.PHONY: all build push

build:
	docker build -t fixate/ruby-rbx:12.04 .

push:
	docker push fixate/ruby-rbx
