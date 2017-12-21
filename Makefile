SOURCE		= theses.txt
THEME		= small-white

GENERATOR	= rst2s5.py --theme=$(THEME)
PREPROC		= gpp

all: presentation outline

presentation:
	$(PREPROC) $(SOURCE) \
	| $(GENERATOR) - index.html
	$(PREPROC) -DFULL $(SOURCE) \
	| $(GENERATOR) - index.full.html

outline:
	$(PREPROC) $(SOURCE) \
	| $(GENERATOR) --view-mode=outline - outline.html
	$(PREPROC) -DFULL $(SOURCE) \
	| $(GENERATOR) --view-mode=outline - outline.full.html
