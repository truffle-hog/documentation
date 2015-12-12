rm *.bbl *.aux *.glo *.gls *.ist *.ilg *.log *.out *.blg *.synctex.gz *.toc *.lof

pdflatex functionalSpecificationPS.tex
makeglossaries functionalSpecificationPS
pdflatex functionalSpecificationPS.tex

makeindex -s functionalSpecificationPS.ist -o functionalSpecificationPS.gls functionalSpecificationPS.glo
pdflatex functionalSpecificationPS.tex
pdflatex functionalSpecificationPS.tex
#makeindex -s functionalSpecificationPS.ist -o functionalSpecificationPS.gls functionalSpecificationPS.glo
#pdflatex functionalSpecificationPS.tex
evince functionalSpecificationPS.pdf
