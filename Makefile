all: 
	pandoc -s -V geometry:margin=1in --number-sections --highlight-style pygments -S --toc -c css/vendor.css -B head.html pre/*.md beageek/*.md http/*.md more/*.md end/iot.md -o index.html