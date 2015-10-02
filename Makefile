DIRS:=$(subst /,,$(wildcard */))
XPIS:=$(addsuffix .xpi,$(DIRS))

.PHONY: all clean $(XPIS)

all: $(XPIS)

clean:
	rm -f *.xpi

$(XPIS):
	rm -f "$@"
	cd "$(basename $@)" && zip -r "../$@" *
