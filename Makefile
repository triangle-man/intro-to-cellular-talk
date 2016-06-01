graphdir = images/graphviz

index.html : introduction-to-cellular.md \
		$(graphdir)/eg-tax-calc-expression-tree.svg \
		$(graphdir)/eg-tax-calc-expression-tree-linear.svg \
		$(graphdir)/languages.svg \
		$(graphdir)/languages-with-p.svg \
		$(graphdir)/complex-1.svg \
                $(graphdir)/complex-2.svg \
                $(graphdir)/complex-3.svg \

	pandoc -t revealjs --standalone --data-dir=data -o $@ introduction-to-cellular.md

%.svg : %.dot
	dot -Tsvg $< > $@



