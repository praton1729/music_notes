MD_SOURCES=$(wildcard *.md)
PDF_TARGETS=$(patsubst %.md,%.pdf, $(MD_SOURCES))

all: ${PDF_TARGETS}

%.pdf: %.md
	pandoc $^ -o $@

clean:
	rm -f *.pdf
