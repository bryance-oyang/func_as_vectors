#CHI APPROVES OF THIS

indir=latex
outdir=pdf
filename=func_as_vectors

normal: $(indir)/*.tex
	mkdir -p $(outdir)
	cd $(indir);\
	pdflatex --draftmode --output-directory=../$(outdir) --shell-escape $(filename).tex;\
	pdflatex --output-directory=../$(outdir) --shell-escape $(filename).tex
	rm -f $(outdir)/*.aux
	rm -f $(outdir)/*.log
	rm -f $(outdir)/*.out
	rm -f $(outdir)/*.toc
	rm -f $(outdir)/*.bib

bib: $(indir)/*.tex
	mkdir -p $(outdir)
	cd $(indir);\
	pdflatex --draftmode --shell-escape $(filename).tex;\
	bibtex $(filename).aux;\
	pdflatex --draftmode --output-directory=../$(outdir) --shell-escape $(filename).tex;\
	pdflatex --output-directory=../$(outdir) --shell-escape $(filename).tex
	rm -f $(outdir)/*.aux
	rm -f $(outdir)/*.log
	rm -f $(outdir)/*.out
	rm -f $(outdir)/*.toc
	rm -f $(outdir)/*.bib
	rm -f $(indir)/*.aux
	rm -f $(indir)/*.log
	rm -f $(indir)/*.out
	rm -f $(indir)/*.toc
	rm -f $(indir)/*.bbl
	rm -f $(indir)/*.blg
