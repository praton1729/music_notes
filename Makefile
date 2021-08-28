all: week_1.pdf week_2.pdf week_3.pdf week_4.pdf

%.pdf: %.md
	pandoc $^ -o $@

clean:
	rm -f *.pdf
