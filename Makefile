
pdf: text.tex
	lualatex -synctex=1 -interaction=nonstopmode -file-line-error -pdf text.tex

glossaries: text.tex ./src/glossaries/abbreviations.tex ./src/glossaries/symbols.tex
	makeglossaries text

citations: text.tex ./src/bib/zdroje.bib
	biber text.bcf
