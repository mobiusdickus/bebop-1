develop: dev-env clean build run

production: prod-env clean build run

dev-env:
	$(eval env=development)

prod-env:
	$(eval env=production)

clean:
	docker-compose -f docker-compose.${env}.yml stop -t0
	docker-compose -f docker-compose.${env}.yml rm -f

build:
	docker-compose -f docker-compose.${env}.yml build

run:
	docker-compose -f docker-compose.${env}.yml up
