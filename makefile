# options de compilation
XELATEX	?= cd tex/ ; xelatex --output-directory=../pdf/

# Toutes
all: martin_1744 bjc_other bjc_current bjc_mix

# Martin 1774
martin_1744: pdf/martin_1744.pdf

pdf/martin_1744.pdf: tex/martin_1744.tex tex/martin_1744/*.tex
	$(XELATEX) martin_1744
	$(XELATEX) martin_1744
	$(XELATEX) martin_1744

# BJC format current
bjc_current: pdf/bjc_current.pdf

pdf/bjc_current.pdf: tex/bjc_current.tex tex/bjc_2014/*.tex
	$(XELATEX) bjc_current
	$(XELATEX) bjc_current
	$(XELATEX) bjc_current

# BJC format other
bjc_other: pdf/bjc_other.pdf

pdf/bjc_other.pdf: tex/bjc_other.tex tex/bjc_2014/*.tex
	$(XELATEX) bjc_other
	$(XELATEX) bjc_other
	$(XELATEX) bjc_other

# BJC format mixte
bjc_mix: pdf/bjc_mix.pdf

pdf/bjc_mix.pdf: tex/bjc_mix.tex tex/bjc_2014/*.tex
	$(XELATEX) bjc_mix
	$(XELATEX) bjc_mix
	$(XELATEX) bjc_mix

# BJC livre individuel
bjc_book: pdf/bjc_book.pdf

pdf/bjc_book.pdf: tex/bjc_book.tex tex/bjc_2014/*.tex
	$(XELATEX) bjc_book
	$(XELATEX) bjc_book
	$(XELATEX) bjc_book

# supprime les fichiers généré par xelatex
clean: pdf/*.aux pdf/*.log pdf/*.out pdf/*.toc
	rm -rf pdf/*.aux
	rm -rf pdf/*.log
	rm -rf pdf/*.out
	rm -rf pdf/*.toc
