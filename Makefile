.PHONY: postgres adminer migrate

postgres:
	docker run --rm -ti -p 2345:5432 -e POSTGRES_PASSWORD=secret postgres

adminer:
	docker run --rm -ti -p 8080:8080 adminer

migrate:
	migrate -source file://migrations -database postgres://postgres:secret@localhost:2345/postgres?sslmode=disable up

migrate-down:
	migrate -source file://migrations -database postgres://postgres:secret@localhost:2345/postgres?sslmode=disable down

migrate-docker:
	docker run --rm -ti -v /Users/ricardo.silva@mambu.com/Code/goreddit/migrations:/migrations --entrypoint "" --network host migrate/migrate sh