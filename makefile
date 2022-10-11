WORKDIR = $(CURDIR)
COMMONDIR = $(CURDIR)/commons
OUTDIR = $(CURDIR)/pdfs
FLAGS = -quiet -bibtex -shell-escape -pdf -outdir=$(OUTDIR)

.FORCE:

%.tex: .FORCE
	cd $(COMMONDIR) && latexmk $(FLAGS) $(WORKDIR)/$@
	cd $(COMMONDIR) && latexmk -c -quiet -outdir=$(OUTDIR) $(WORKDIR)/$@
	rm $(OUTDIR)/*.64 $(OUTDIR)/*.bbl

clean:
	rm -rf pdfs/*