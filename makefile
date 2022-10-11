WORKDIR = $(CURDIR)
COMMONDIR = $(CURDIR)/commons
OUTDIR = $(CURDIR)/pdfs
FLAGS = -quiet -bibtex -shell-escape -pdf -outdir=$(OUTDIR)

.FORCE:

%.tex: .FORCE
	latexmk $(FLAGS) $@
	latexmk -c -quiet -outdir=$(OUTDIR) $@
	rm $(OUTDIR)/*.64 $(OUTDIR)/*.bbl

clean:
	rm -rf pdfs/*