all: paper

paper:
	@pdflatex ldo-deterministic
	@bibtex   ldo-deterministic
	@pdflatex ldo-deterministic
	@pdflatex ldo-deterministic

clean:
	@rm -f *.aux \
           *.bbl \
           *.blg \
           *.dvi \
           *.log \
           *.out
