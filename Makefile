#PRODUCTION=docker-compose.prod.yml
#DEVELOPMENT=docker-compose.dev.yml

develop: clean-dev build-dev run-dev

clean-dev:
	docker-compose -f docker-compose.dev.yml stop -t0
	docker-compose -f docker-compose.dev.yml rm -f

build-dev:
	docker-compose -f docker-compose.dev.yml build

run-dev:
	docker-compose -f docker-compose.dev.yml up

prod: clean-prod build-prod run-prod

clean-prod:
	docker-compose -f docker-compose.prod.yml stop -t0
	docker-compose -f docker-compose.prod.yml rm -f

build-prod:
	docker-compose -f docker-compose.prod.yml build

run-prod:
	docker-compose -f docker-compose.prod.yml up
