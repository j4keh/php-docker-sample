reset: downv prune build up ps

prune:
	docker system prune -f
ps:
	docker compose ps
up:
	docker compose up -d
build:
	docker compose build
downv:
	docker compose down -v --remove-orphans
restart:
	docker compose restart
login:
	docker compose exec web /bin/sh
