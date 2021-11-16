postgres:
	docker run --rm -ti --network host -e POSTGRES_PASSWORD=secret postgres

adminer:
	docker run --rm -ti network host adminer

migrate:
	docker run --rm -ti -v /Users/ricardo.silva@mambu.com/Code/goreddit/migrations:/migrations --entrypoint "" --network host migrate/migrate sh