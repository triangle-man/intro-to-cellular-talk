index.html : introduction-to-cellular.md \
		images/graphviz/eg-tax-calc-expression-tree.png \
		images/graphviz/eg-tax-calc-expression-tree-linear.png \
		images/graphviz/languages.png \
		images/graphviz/languages-with-p.png
	pandoc -t revealjs --standalone -o $@ introduction-to-cellular.md

images/graphviz/eg-tax-calc-expression-tree.png : images/graphviz/eg-tax-calc-expression-tree.dot
	dot -Tpng $< > $@

images/graphviz/eg-tax-calc-expression-tree-linear.png : images/graphviz/eg-tax-calc-expression-tree-linear.dot
	dot -Tpng $< > $@

images/graphviz/languages.png : images/graphviz/languages.dot
	dot -Tpng $< > $@

images/graphviz/languages-with-p.png : images/graphviz/languages-with-p.dot
	dot -Tpng $< > $@


