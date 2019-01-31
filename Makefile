install-laravel:
	docker-compose exec php-fpm composer global require "laravel/installer"
	docker-compose exec php-fpm /root/.composer/vendor/bin/laravel new 

run:
	docker-compose up -d 

stop:
	docker-compose down

restart: stop run		

workspace:
	docker-compose exec php-fpm bash

ps:
	docker-compose ps