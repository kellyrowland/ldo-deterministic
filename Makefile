all: paper

paper:
	@pdflatex ldo-deterministic
	@bibtex   ldo-deterministic
	@pdflatex ldo-deterministic
	@pdflatex ldo-deterministic

tarball:
	tar -cf ldo-deterministic.tar \
	ldo-deterministic.tex \
	ldo-deterministic.bib \
	*.eps \
	*.png \
	*.bst

clean:
	@rm -f *.aux \
           *.bbl \
           *.blg \
           *.dvi \
           *.log \
           *.out
