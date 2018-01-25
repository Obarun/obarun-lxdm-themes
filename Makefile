# Makefile for pacopts

VERSION = $$(git describe --tags| sed 's/-.*//g;s/^v//;')
PKGNAME = obarun-lxdm-themes

THEMESDIRS = /usr/share/lxdm/themes/Obarun
THEMESFILES = 	exit.png \
				greeter-gtk3.ui \
				index.theme \
				logo-dm.png \
				session.png \
				shade.png
BACKGROUNDDIRS = /usr/share/wallpapers/obarun
BACKGROUNDFILES = background-dm.jpg

		
install: 
	
	for i in $(THEMESFILES); do \
		install -Dm 0644 $$i $(DESTDIR)/$(THEMESDIRS)/$$i; \
	done
	
	install -Dm 0644  $(DESTDIR)/$(BACKGROUNDDIRS)/$(BACKGROUNDFILES)
				
	install -Dm 0644 LICENSE $(DESTDIR)/usr/share/licenses/$(PKGNAME)/LICENSE

version:
	@echo $(VERSION)
	
.PHONY: install version 
