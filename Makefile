MDS=$(wildcard *.md)
PDFS=$(addprefix build/,$(MDS:.md=.pdf))
HTMLS=$(addprefix build/,$(MDS:.md=.html))


build:
	mkdir -p build

build/%.pdf: %.md build
	pandoc $< -o $@ --variable=fontfamily:arev

.PHONY: pdfs

pdfs: $(PDFS)
	:

docs:
	mkdir -p docs

build/%.html: %.md build static/*
	pandoc --self-contained $< -o $@

.PHONY: htmls

htmls: $(HTMLS)
	:

publish: htmls docs
	rm docs/*
	cp build/*.html docs

watch:
	ag -l | entr -rcs 'make htmls && reload.bash $(reload)'
