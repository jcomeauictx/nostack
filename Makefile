all: icon.png
view: icon.ps
	gs $<
edit: icon.ps
	$(EDITOR) $+
icon.png: icon001.ppm
	convert $< -gravity center -crop 480x480+0+0 +repage $@
icon001.ppm: icon.ps
	pstopnm $<
