PATCH_DIR:=$(dir $(abspath $(lastword $(MAKEFILE_LIST))))

define mwan3_append
	$(CP) $(PATCH_DIR)/files/mwan3.sh $(1)/lib/mwan3/mwan3.sh
	chmod 0644 $(1)/lib/mwan3/mwan3.sh
endef

Package/mwan3/install += $(newline)$(mwan3_append)