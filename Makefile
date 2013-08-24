all : vbasym-note.pdf

vbasym-note.pdf : vbasym-note.tex $(wildcard images/*)
	xelatex $<
	xelatex $<

.PHONY : clean cleanall

clean :
	rm -f vbasym-note.aux vbasym-note.log vbasym-note.out vbasym-note.toc

cleanall : clean
	rm -f vbasym-note.pdf
