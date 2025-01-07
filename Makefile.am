bin_PROGRAMS = main
main_SOURCES = main.cpp solution.cpp solution.h

dist_doc_DATA = README.md LICENSE

pkgdatadir = $(datadir)/myproject

install-exec-hook:
	mkdir -p $(DESTDIR)/usr/bin
	cp main $(DESTDIR)/usr/bin/
