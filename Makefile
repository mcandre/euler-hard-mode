all: lint

safety:
	safety check

puppet-lint:
	@find . -type f -name '*.pp' -exec puppet-lint {} \;

editorconfig:
	@git ls-files -z | grep -av patch | xargs -0 -r -n 100 $(shell npm bin)/eclint check

lint: safety puppet-lint editorconfig
