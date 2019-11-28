build: ## build image
	docker build -t ecomrcapp --file DockerfileDev .

start: ## start container
	docker-compose -f docker-compose.yml up --no-build -d

stop: ## stop container
	docker-compose -f docker-compose.yml stop

restart: ## restart container
	docker-compose -f docker-compose.yml restart

logs: ## show logs
	docker-compose -f docker-compose.yml logs --tail="all" --follow

build-pro: ## build image to production
	docker build -t heroker .

run-image: ## stop container
	docker run -it -p 8080:80 --env-file ./.env ecomrcapp
