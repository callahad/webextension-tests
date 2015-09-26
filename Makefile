all: web_accessible_resources i18n_content_script
clean:
	rm -f *.xpi
web_accessible_resources: clean
	cd web_accessible_resources && zip -r ../web_accessible_resources.xpi *
i18n_content_script: clean
	cd i18n_content_script && zip -r ../i18n_content_script.xpi *
