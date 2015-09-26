all: web_accessible_resources i18n_content_script shared_content_script_properties
clean:
	rm -f *.xpi
web_accessible_resources: clean
	cd web_accessible_resources && zip -r ../web_accessible_resources.xpi *
i18n_content_script: clean
	cd i18n_content_script && zip -r ../i18n_content_script.xpi *
shared_content_script_properties: clean
	cd shared_content_script_properties && zip -r ../shared_content_script_properties.xpi *
