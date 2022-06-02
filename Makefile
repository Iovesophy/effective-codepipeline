APP:=react-sample

all: run appbuild

.PHONY: appbuild
appbuild:
	docker compose up appbuild

.PHONY: run
run: build
	docker compose run --rm node sh -c "npx create-react-app $(APP)"

.PHONY: build
build:
	docker compose build

.PHONY: up
up:
	docker compose up node

