all: lint

puppet-lint:
	find . -type f -name '*.pp' -exec puppet-lint {} \;

lint: puppet-lint
