build:
	docker build -t go-build-test:latest .
run:
	docker run --rm go-build-test
debug-build:
	docker build -t go-build-test-debug:latest -f Dockerfile.build .
debug:
	docker run --rm -it go-build-test-debug:latest sh
