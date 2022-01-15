MD_SOURCES=$(wildcard *.md)
PDF_TARGETS=$(patsubst %.md,%.pdf, $(MD_SOURCES))

SORTED_PDFS=$(shell for p in ${PDF_TARGETS}; do  echo $$p; done | sort --sort=version)

all: ${PDF_TARGETS} merge

%.pdf: %.md
	pandoc $^ -o $@

merge: ${PDF_TARGETS}
	@echo Merging all the pdfs...
	pdfunite ${SORTED_PDFS} merge.pdf

clean:
	rm -f *.pdf
