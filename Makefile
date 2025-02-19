include ./.env

up:
	@echo 'Running up migrations...'
	migrate -path ./migrations -database $(GREENLIGHT_DB_DSN) up 

migration:
	@echo 'Creating migration files for ${name}'
	migrate create -seq -ext=.sql -dir=./migrations ${name}

run:
	go run ./cmd/api
