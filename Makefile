MDS=$(wildcard *.md)
PDFS=$(addprefix build/,$(MDS:.md=.pdf))

build:
	mkdir -p build

build/%.pdf: %.md build
	pandoc $< -o $@ --variable=fontfamily:arev

.PHONY: pdfs

pdfs: $(PDFS)
	:
