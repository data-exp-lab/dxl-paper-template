BNAME=ms

all: ${BNAME}.pdf

${BNAME}.dvi: ${BNAME}.tex
	pdflatex $<
	bibtex ${BNAME}
	pdflatex $<
	pdflatex $<

${BNAME}.pdf: ${BNAME}.dvi
	/bin/true
#	dvipdf $< $@

clean:
	rm -rf ${BNAME}.{pdf,log,dvi,aux,out,tgz}
