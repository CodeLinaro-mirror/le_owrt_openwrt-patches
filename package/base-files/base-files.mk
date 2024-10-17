define basefile_append
	chmod 0644 $(1)/lib/functions.sh
	chmod 0644 $(1)/lib/functions/network.sh
endef

Package/base-files/install += $(newline)$(basefile_append)

