MD_SOURCES=$(shell ls *.md | sort --sort=version)
PDF_TARGETS=$(addprefix pdfs/,$(patsubst %.md,%.pdf, $(MD_SOURCES)))
OUT=pdfs

all: $(PDF_TARGETS) merge

pdfs/%.pdf: %.md | $(OUT)
	pandoc $^ -o $@

merge: $(PDF_TARGETS)
	@echo Merging all the pdfs...
	@pdfunite $^ pdfs/merge.pdf

$(OUT):
	@echo Creating $(OUT)/ dir
	@mkdir $(OUT)

clean:
	@echo Deleting $(OUT)/ dir
	@rm -rf $(OUT)
