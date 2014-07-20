all: lint

puppet-lint:
	find . -type f -name '*.pp' -print -exec puppet-lint {} \;

lint: puppet-lint
