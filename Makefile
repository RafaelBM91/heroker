build: ## build image
	docker-compose -f docker-compose.yml build --force-rm --no-cache

start: ## start container
	docker-compose -f docker-compose.yml up --no-build -d

stop: ## stop container
	docker-compose -f docker-compose.yml stop

logs: ## show logs
	docker-compose -f docker-compose.yml logs --tail="all" --follow
