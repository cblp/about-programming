SOURCE		= theses.txt
THEME		= small-white

GENERATOR	= rst2s5.py --theme=$(THEME)

all: presentation outline

presentation:
	$(GENERATOR) $(SOURCE) index.html

outline:
	$(GENERATOR) --view-mode=outline $(SOURCE) outline.html
