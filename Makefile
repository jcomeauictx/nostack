all: icon.png ~/Downloads/nostack.zip
view: icon.ps
	gs $<
edit: icon.ps
	$(EDITOR) $+
icon.png: icon001.ppm Makefile
	convert $< -gravity center -crop 480x480+0+0 +repage -resize 128x128 $@
icon001.ppm: icon.ps
	pstopnm $<
~/Downloads/nostack.zip: manifest.json icon.png nostack.js
	zip $@ $+
