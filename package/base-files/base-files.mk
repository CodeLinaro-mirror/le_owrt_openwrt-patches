PATCH_DIR:=$(dir $(abspath $(lastword $(MAKEFILE_LIST))))

define basefile_append
	$(CP) $(PATCH_DIR)/files/boot $(1)/etc/init.d/boot
	chmod 0644 $(1)/lib/functions.sh
	chmod 0644 $(1)/lib/functions/network.sh
	chmod 0755 $(1)/etc/init.d/boot
endef

Package/base-files/install += $(newline)$(basefile_append)

