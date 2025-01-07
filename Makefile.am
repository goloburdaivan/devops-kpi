AUTOMAKE_OPTIONS = foreign
bin_PROGRAMS = my_program
my_program_SOURCES = main.cpp solution.cpp solution.h
dist_doc_DATA = README

CTRLF_DIR=$(CURDIR)/deb/DEBIAN
CTRLF_NAME=$(CTRLF_DIR)/control

deb:

  mkdir -p $(CTRLF_DIR)
  chmod 0755 $(CTRLF_DIR)
  echo Package: $(PACKAGE) > $(CTRLF_NAME)
  echo Version: $(VERSION) >> $(CTRLF_NAME)
  echo Architecture: all >> $(CTRLF_NAME)
  echo Maintainer: $(PACKAGE_BUGREPORT) >> $(CTRLF_NAME)
  echo "Description: Hello world" >> $(CTRLF_NAME)
  make DESTDIR=$(CURDIR)/deb install
