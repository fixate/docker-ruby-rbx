all: build

build:
	docker build -t fixate/ruby-rbx .

push:
	docker build -t fixate/ruby-rbx
