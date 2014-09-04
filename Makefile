all: 
	pandoc -s -V geometry:margin=1in --number-sections --highlight-style pygments -S --toc -c css/vendor.css -B template/head.html src/pre/*.md src/*.md -o build/pdf.html
	pandoc -s -V geometry:margin=1in --number-sections --highlight-style pygments -S --toc -c css/vendor.css -B template/headpdf.html src/pre/*.md src/*.md -o index.html
	pandoc --template=template/template.tex build/pdf.html -o build/iot.pdf --latex-engine=xelatex

iot:
	pandoc -s -V geometry:margin=1in --number-sections --highlight-style pygments -S --toc -c css/vendor.css -B template/head.html end/iot.md -o iot.html 
