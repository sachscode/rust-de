SUBDIRS := $(wildcard */.)

.PHONY: all $(SUBDIRS) clean build test lint debug release

all: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@ clean
	$(MAKE) -C $@ build
	$(MAKE) -C $@ debug
	$(MAKE) -C $@ release
	$(MAKE) -C $@ test
	$(MAKE) -C $@ lint

clean:
	@for dir in $(SUBDIRS); do \
        $(MAKE) -C $$dir clean; \
    done

build:
	@for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir build; \
	done

test:
	@for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir test; \
	done

lint:
	@for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir lint; \
	done

debug:
	@for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir debug; \
	done

release:
	@for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir release; \
	done


