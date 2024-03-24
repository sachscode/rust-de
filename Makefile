SUBDIRS := $(wildcard */.)

.PHONY: all $(SUBDIRS)

all: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@ build
	$(MAKE) -C $@ debug
	$(MAKE) -C $@ release
	$(MAKE) -C $@ test
	$(MAKE) -C $@ lint
