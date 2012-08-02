
PLUGIN_NAME=rate
PLUGIN_DIR=$(DESTDIR)/usr/share/redmine/vendor/plugins/$(PLUGIN_NAME)

INSTALL_FILES=\
	app		\
	config		\
	COPYRIGHT.txt	\
	CREDITS.txt	\
	db		\
	features	\
	GPL.txt		\
	init.rb		\
	lang		\
	lib		\
	Rakefile	\
	README.rdoc	\
	routes.rb	\
	spec

all:

install:
	@rm -Rf $(PLUGIN_DIR)
	@mkdir -p $(PLUGIN_DIR)
	@for i in $(INSTALL_FILES) ; do cp -R --preserve $$i $(PLUGIN_DIR) ; done
