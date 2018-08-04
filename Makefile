MDS=$(wildcard *.md)
PDFS=$(addprefix build/,$(MDS:.md=.pdf))
HTMLS=$(addprefix docs/,$(MDS:.md=.html))


build:
	mkdir -p build

build/%.pdf: %.md build
	pandoc $< -o $@ --variable=fontfamily:arev

.PHONY: pdfs

pdfs: $(PDFS)
	:

docs:
	mkdir -p docs

docs/%.html: %.md docs
	pandoc $< -o $@

.PHONY: htmls

htmls: $(HTMLS)
	:
