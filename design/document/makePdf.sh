rm *.bbl *.aux *.glo *.gls *.ist *.ilg *.log *.out *.blg *.synctex.gz *.toc *.lof *.acn *.acr *.glg *.xdy *.alg

pdflatex design.tex
makeglossaries design
pdflatex design.tex
pdflatex design.tex
makeglossaries design
pdflatex design.tex
evince design.pdf
