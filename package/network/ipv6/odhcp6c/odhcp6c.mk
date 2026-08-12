PATCH_DIR:=$(dir $(abspath $(lastword $(MAKEFILE_LIST))))

define odhcp6c_append
	$(CP) $(PATCH_DIR)/files/dhcpv6.script $(1)/lib/netifd/dhcpv6.script
	$(CP) $(PATCH_DIR)/files/dhcpv6.sh $(1)/lib/netifd/proto/dhcpv6.sh
endef

Package/odhcp6c/install += $(newline)$(odhcp6c_append)
