PATCH_DIR:=$(dir $(abspath $(lastword $(MAKEFILE_LIST))))
define netifd_append
	$(CP) $(PATCH_DIR)/dhcp.script $(1)/lib/netifd/dhcp.script
	$(CP) $(PATCH_DIR)/dhcp.sh $(1)/lib/netifd/proto/dhcp.sh
	chmod 0644 $(1)/lib/netifd/netifd-proto.sh
endef

Package/netifd/install += $(newline)$(netifd_append)