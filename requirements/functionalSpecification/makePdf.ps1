$mainfile = "functionalSpecificationPS" # Name of the file to compile. This will also be the outpit file name.
$removeAuxiliaries = $TRUE # Remove all temp/aux files?

If($removeAuxiliaries) {
	rm *.aux, *.gls, *.gls, *.ilg, *.ist, *.pdf, *.toc, *.glo, *.glg, *.out, *.lof # Clean temp files
}
If($?){
	Invoke-Expression "pdflatex $mainfile.tex"
	Invoke-Expression "makeindex -s $mainfile.ist -o $mainfile.gls $mainfile.glo" # Build glossary
	Invoke-Expression "pdflatex $mainfile.tex"
	Invoke-Expression "pdflatex $mainfile.tex"
	Invoke-Expression "makeindex -s $mainfile.ist -o $mainfile.gls $mainfile.glo" # Build glossary
	Invoke-Expression "pdflatex $mainfile.tex"
	Invoke-Expression "start $mainfile.pdf" # Show the pdf
}
If($removeAuxiliaries) {
	rm *.aux, *.gls, *.gls, *.ilg, *.ist, *.toc, *.glo, *.glg, *.out, *.lof # Clean temp files but not pdf
}