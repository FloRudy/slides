
FILE=slides

# ----------------------------------------------------------------------------

build: build-latex build-dvi build-pdf build-clean

clean: build-clean

# ----------------------------------------------------------------------------

build-latex:
	latex ${FILE}.tex
	latex ${FILE}.tex
	
build-dvi:
	dvips $(FILE).dvi
	
build-pdf:
	ps2pdf  -dPDFSETTINGS=/prepress -dCompatibilityLevel=1.3 \
           -dMAxSubsetPct=100 -dSubsetFonts=true \
           -dEmbedAllFonts=true \
           -dAutoRotatePages=/None -dOptimize=true $(FILE).ps

build-clean:
	rm -f *.dvi *.log *.aux *.idx *.ps *.out *.toc *~ *.bbl *.blg *.nav *.snm *.vrb
	
