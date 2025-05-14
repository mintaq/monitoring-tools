.PHONY: help

help: ## Show this help message
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z0-9_.-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

all: docker.production.up

docker.prune:
	docker image prune && \
	docker volume prune && \
	docker builder prune

docker.up: ## Start docker-compose with production configuration
	docker compose -f docker-compose.yaml up -d --build

docker.down: ## Stop docker-compose with production configuration
	docker compose -f docker-compose.yaml down