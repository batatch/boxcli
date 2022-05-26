
DOCKER_COMPOSE = docker-compose

DOCKER_IMAGE = boxcli
DOCKER_TAG = latest

DOCKERHUB_ACCOUNT = batatch


help: ## Show help
	@echo "make [opsitons]"
	@echo "options:"
	@grep -E '^[a-zA-Z_-\%]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-30s\033[0m %s\n", $$1, $$2}'

build:  ## Build image
	$(DOCKER_COMPOSE) build

push:
	docker tag  boxcli:latest $(DOCKERHUB_ACCOUNT)/$(DOCKER_IMAGE):$(DOCKER_TAG)
	docker push $(DOCKERHUB_ACCOUNT)/$(DOCKER_IMAGE):$(DOCKER_TAG)


# EOF
