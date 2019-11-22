start: ## start container
	docker-compose -f docker-compose.yml up --no-build -d

stop: ## stop container
	docker-compose -f docker-compose.yml stop

logs: ## show logs
	docker-compose -f docker-compose.yml logs --tail="all" --follow

build-pro: ## build image
	docker build .
