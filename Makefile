init:
	echo Building required file structure
	rm -rf logs dags plugins
	mkdir -m 777 logs dags plugins
	docker-compose up -d
	docker-compose logs -f

