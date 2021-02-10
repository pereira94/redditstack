run:
	docker-compose down
	docker-compose pull
	docker-compose build
	docker-compose up -d

stop:
	docker-compose down

log:
	docker-compose logs -f

init: clear
	docker-compose down
	docker-compose pull
	docker-compose build
	docker-compose up -d

clear:
	rm -rf logs dags plugins
	mkdir -m 777 logs dags plugins

update: clear
	git add --all
	git commit -m 'update'
	git push origin main

mainpull:
	git reset --hard
	git pull origin main
