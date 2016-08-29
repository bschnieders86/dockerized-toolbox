#!/bin/bash
docker run \
	--rm \
	-it \
	-p 80:80 \
	-v $(pwd):/usr/local/lib/php \
	php:7.0-cli \
	php \
	$@
	