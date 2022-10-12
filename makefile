proposta:
	latexmk -quiet -bibtex -pdf --shell-escape -jobname=proposta-tcc-andre -outdir=./.temp/ -cd ./src/proposta/main.tex
	cp src/proposta/.temp/proposta-tcc-andre.pdf pdfs/proposta-tcc-andre.pdf

# %.tex: .FORCE
# 	cd $(COMMONDIR) && latexmk $(FLAGS) $(WORKDIR)/$@
# 	cd $(COMMONDIR) && latexmk -c -quiet -outdir=$(OUTDIR) $(WORKDIR)/$@
# 	rm $(OUTDIR)/*.64 $(OUTDIR)/*.bbl

clean:
	rm -rf pdfs/*
	rm -rf src/*/.temp/