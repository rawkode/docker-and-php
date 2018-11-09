deps:
	@composer install

rebuild:
	@docker-compose build php

dshell: rebuild
	@docker-compose run --rm --service-ports php bash --norc

dclean:
	@docker-compose down --rmi=local --volumes
