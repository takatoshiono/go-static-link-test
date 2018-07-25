build:
	docker build -t go-build-test:latest .
run:
	docker run --rm go-build-test
