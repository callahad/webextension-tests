DIRS:=$(subst /,,$(wildcard */))
XPIS:=$(addsuffix .xpi,$(DIRS))

.PHONY: all clean $(XPIS)

all: $(XPIS)

clean:
	@rm -f *.xpi

$(XPIS):
	@echo "Building $@"
	@rm -f "$@"
	@cd "$(basename $@)" && zip -qr "../$@" *
