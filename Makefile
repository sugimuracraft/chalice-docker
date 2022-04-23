DC := docker-compose

deploy:
	${DC} run --rm app chalice deploy
down:
	${DC} down
up:
	${DC} up -d
