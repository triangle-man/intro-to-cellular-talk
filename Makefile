intro.html : introduction-to-cellular.md
	pandoc -t revealjs --standalone -o $@ introduction-to-cellular.md
