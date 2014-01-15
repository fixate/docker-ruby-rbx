all: build

build:
	docker build -t fixate/ruby-rbx .

push:
	docker push fixate/ruby-rbx
