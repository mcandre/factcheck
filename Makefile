all: lint

editorconfig:
	@git ls-files -z | grep -av patch | xargs -0 -r -n 100 $(shell npm bin)/eclint check

lint: editorconfig

install: factcheck/factcheck.factor factcheck/authors.txt
	@cp -r factcheck $FACTOR_ROOT/extra

uninstall:
	-rm -rf $FACTOR_ROOT/extra/factcheck
