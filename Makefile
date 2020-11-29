SHELL := /bin/bash

build:
	@docker build --no-cache \
		-f ./1.19/Dockerfile \
		--build-arg TZ=Europa/Amsterdam \
		-t jobverplanke/nginx:1.19-alpine \
		./1.19
