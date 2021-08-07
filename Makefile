all: week_1.pdf week_2.pdf

%.pdf: %.md
	pandoc $^ -o $@

clean:
	rm -f *.pdf
