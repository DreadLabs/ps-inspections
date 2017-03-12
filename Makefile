#
# Makefile for ps-inspections
#
# @see http://www.itnotes.de/docker/development/tools/2014/08/31/speed-up-your-docker-workflow-with-a-makefile/
#

.PHONY: build-php

build-php:
	docker build --file ./php/Dockerfile -t dreadlabs/ps-inspections:php-7.0 ./php

