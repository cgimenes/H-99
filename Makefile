.PHONY: test

watch:
	stack build --test --file-watch

test:
	stack test

build:
	stack build --test

indent:
	sh ./hindent-all