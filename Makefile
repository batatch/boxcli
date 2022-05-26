
DOCKER_COMPOSE = docker-compose


help: ## Show help
	@echo "make [opsitons]"
	@echo "options:"
	@grep -E '^[a-zA-Z_-\%]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-30s\033[0m %s\n", $$1, $$2}'

build:  ## Build image
	$(DOCKER_COMPOSE) build

# EOF
