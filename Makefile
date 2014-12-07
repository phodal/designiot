all:
	pandoc -s -V geometry:margin=1in --number-sections --highlight-style pygments -S --toc -c css/vendor.css -B template/head.html src/pre/*.md src/*.md src/end/*.md -o index.html

iot:
	pandoc -s -V geometry:margin=1in --number-sections --highlight-style pygments -S --toc -c css/vendor.css -B template/head.html end/iot.md -o iot.html 

epub:
	pandoc -s -V geometry:margin=1in --number-sections --highlight-style pygments -S --toc -c css/vendor.css -B template/headpdf.html src/pre/*.md src/*.md src/end/*.md -o build/pdf.html
	pandoc build/pdf.html -o build/designiot.epub

release:
	pandoc -s -V geometry:margin=1in --number-sections --highlight-style pygments -S --toc -c css/vendor.css -B template/headpdf.html src/pre/*.md src/*.md src/end/*.md -o build/pdf.html
	pandoc --template=template/template.tex build/pdf.html -o build/iot.pdf --latex-engine=xelatex
	pandoc build/pdf.html -o build/designiot.epub
	pandoc build/pdf.html -o build/designiot.mobi
