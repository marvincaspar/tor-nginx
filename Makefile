build:
	docker build -t marvincaspar/tor-nginx .

run:
	docker-compose up -d

stop:
	docker-compose down

push:
	docker push marvincaspar/tor-nginx
	