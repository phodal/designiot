all: 
	pandoc -s -V geometry:margin=1in --number-sections --highlight-style pygments -S --toc -c css/vendor.css -B head.html pre/*.md beageek/*.md http/*.md more/*.md -o index.html
	pandoc -s -V geometry:margin=1in --number-sections --highlight-style pygments -S --toc -c css/vendor.css -B head.html end/iot.md -o iot.html 
	pandoc --template=template.tex index.html -o iot.pdf --latex-engine=xelatex