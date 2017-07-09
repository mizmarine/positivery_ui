DOCKER_COMPOSE:=`which docker-compose`
DOCKER_COMPOSE_FILE:='-f docker-compose.yml'

docker/%:
	$(DOCKER_COMPOSE) $(DOCKER_COMPOSE_FILES) $*

ssh:
	$(DOCKER_COMPOSE) $(DOCKER_COMPOSE_FILES) exec ui /bin/bash
