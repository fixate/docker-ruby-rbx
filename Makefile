all: build

build:
	docker build -t fixate/ruby-rbx .
