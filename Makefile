SHELL := /bin/bash

build-119:
	@docker build \
		--no-cache \
		-t jobverplanke/nginx:1.19-alpine \
		./1.19

run-119:
	@docker run --rm -it jobverplanke/php:8.0-fpm sh

build-arguments-119:
	@docker run \
		--rm \
		nginx:1.19-alpine nginx -V 2>&1 | grep -o "arguments.*" | tr ' ' '\n'
