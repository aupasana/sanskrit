
BUNDLE := bundle
JEKYLL := $(BUNDLE) exec jekyll
BASEURL ?= /sanskrit
PORT ?= 4004

.PHONY: install build serve clean

install:
	$(BUNDLE) install

# `make build` will install deps (if necessary) and start a local server (jekyll serve)
build: install
	$(JEKYLL) serve --livereload --baseurl $(BASEURL) --port $(PORT)

serve: build

clean:
	rm -rf _site
