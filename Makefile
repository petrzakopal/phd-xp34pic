all:
	make pdf;make glossaries;make citations;make pdf;make pdf;

pdf: text.tex
	lualatex -synctex=1 -interaction=nonstopmode -file-line-error -pdf text.tex

glossaries: text.tex ./src/glossaries/abbreviations.tex ./src/glossaries/symbols.tex
	makeglossaries text

citations: text.tex ./src/bib/zdroje.bib
	biber text.bcf

clean:
	rm -rf *.aux *.bbl *.log *.nav *.snm *.out *.synctex.gz *.toc *.fls *.run.xml *.fdb_latexmk *.blg *-blx.bib *.bcf *.blg *.glo *.ist *.lof *.log *.lot *.ntn* *.slg *.symbol *.glg *.gls *.abbreviation
