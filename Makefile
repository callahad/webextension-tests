all: web_accessible_resources
clean:
	rm -f *.xpi
web_accessible_resources: clean
	cd web_accessible_resources && zip -r ../web_accessible_resources.xpi *
