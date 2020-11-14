start:
	docker-compose start
stop:
	docker-compose stop
up:
	docker-compose up -d
down:
	docker-compose down
ps:
	docker-compose ps
logs:
	docker-compose logs
php:
	docker-compose exec php sh
nginx:
	docker-compose exec nginx sh
db:
	docker-compose exec db sh
sql:
	docker-compose exec db sh -c 'mysql -u $$MYSQL_USER -p$$MYSQL_PASSWORD'