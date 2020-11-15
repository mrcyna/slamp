help:
	@echo "/--- sLAMP -------------------------------------------------------/";
	@echo "up		Create and start containers"
	@echo "destroy		Stop and remove containers"
	@echo "status 		Shows the status of the containers"
	@echo "shell		Starting a shell in php container"
	@echo "root		Starting a shell in php container (sudo privileges)"
	@echo "mysql		Starting a shell in mysql container"
	@echo "/-----------------------------------------------------------------/";

up:
	docker-compose up -d

destroy:
	docker-compose down

status:
	docker-compose ps

shell:
	docker-compose exec php bash -c "sudo -u slamp /bin/bash"

root:
	docker-compose exec php bash

mysql:
	docker-compose exec mysql mysql -u "root" -p