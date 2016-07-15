all: main.pdf

%.pdf:  %.dvi
	dvipdf $<

%.ps:   %.dvi
	dvips $<

main.dvi: main.tex logic.bib
	latex main
	bibtex main
	latex main
	latex main
	dvips main
	ps2pdf main.ps

