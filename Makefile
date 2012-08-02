
PLUGIN_NAME=rate
PLUGIN_DIR=$(DESTDIR)/usr/share/redmine/vendor/plugins/$(PLUGIN_NAME)

INSTALL_FILES=\
	app			\
	assets			\
	autotest		\
	config			\
	COPYRIGHT.txt		\
	CREDITS.txt		\
	db			\
	GPL.txt			\
	init.rb			\
	lang			\
	lib			\
	rails			\
	Rakefile		\
	README.rdoc		\
	redmine_rate.gemspec	\
	routes.rb		\
	test			\
	VERSION

all:

install:
	@rm -Rf $(PLUGIN_DIR)
	@mkdir -p $(PLUGIN_DIR)
	@for i in $(INSTALL_FILES) ; do cp -R --preserve $$i $(PLUGIN_DIR) ; done
