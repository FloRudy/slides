
FILE=presentation

# ----------------------------------------------------------------------------

build: build-pdf build-clean

clean: build-clean

# ----------------------------------------------------------------------------
	
build-pdf:
	pdflatex ${FILE}.tex

build-clean:
	rm -f *.dvi *.log *.aux *.idx *.ps *.out *.toc *~ *.bbl *.blg *.nav *.snm *.vrb
	
