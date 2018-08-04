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

build/%.html: %.md build
	pandoc $< -o $@

.PHONY: htmls

htmls: $(HTMLS)
	:
