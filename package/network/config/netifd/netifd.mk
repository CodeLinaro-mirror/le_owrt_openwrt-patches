PATCH_DIR:=$(dir $(abspath $(lastword $(MAKEFILE_LIST))))
define netifd_append
	$(CP) $(PATCH_DIR)/dhcp.script $(1)/lib/netifd/dhcp.script
	$(CP) $(PATCH_DIR)/dhcp.sh $(1)/lib/netifd/proto/dhcp.sh
	$(CP) $(PATCH_DIR)/packet_steering $(1)/etc/init.d/packet_steering
	chmod 0644 $(1)/lib/netifd/netifd-proto.sh
endef

Package/netifd/install += $(newline)$(netifd_append)
