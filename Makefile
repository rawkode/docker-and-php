deps:
	@composer install

rebuild:
	@docker-compose build php

dup:
	@docker-compose up -d

dshell: rebuild dup
	@docker-compose exec php bash --norc

dclean:
	@docker-compose down --rmi=local --volumes
