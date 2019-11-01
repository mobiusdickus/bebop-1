develop: clean build run

clean:
	docker-compose -f docker-compose.${ENVIRONMENT}.yml stop -t0
	docker-compose -f docker-compose.${ENVIRONMENT}.yml rm -f

build:
	docker-compose -f docker-compose.${ENVIRONMENT}.yml build

run:
	docker-compose -f docker-compose.${ENVIRONMENT}.yml up
