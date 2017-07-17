DOCKER_COMPOSE:=`which docker-compose`
DOCKER_COMPOSE_FILE:='-f docker-compose.yml'

docker/%:
	$(DOCKER_COMPOSE) $(DOCKER_COMPOSE_FILES) $*

up:
	$(DOCKER_COMPOSE) $(DOCKER_COMPOSE_FILES) up -d

down:
	$(DOCKER_COMPOSE) $(DOCKER_COMPOSE_FILES) down

ssh:
	$(DOCKER_COMPOSE) $(DOCKER_COMPOSE_FILES) exec ui /bin/bash

build:
	cd ui/positivery;yarn build
