graphdir = images/graphviz

index.html : introduction-to-cellular.md \
		$(graphdir)/eg-tax-calc-expression-tree.png \
		$(graphdir)/eg-tax-calc-expression-tree-linear.png \
		$(graphdir)/languages.png \
		$(graphdir)/languages-with-p.png \
		$(graphdir)/complex-1.png \
                $(graphdir)/complex-2.png \
                $(graphdir)/complex-2.png \

	pandoc -t revealjs --standalone --data-dir=data -o $@ introduction-to-cellular.md

%.png : %.dot
	dot -Tpng $< > $@



