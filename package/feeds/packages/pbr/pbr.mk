PBR_DIR:=$(dir $(abspath $(lastword $(MAKEFILE_LIST))))
define pbr_append
	$(INSTALL_CONF) $(PBR_DIR)/files/etc/config/pbr_patched $(1)/etc/config/pbr
	$(INSTALL_DIR) $(1)/etc/hotplug.d/iface
	$(INSTALL_DATA) $(PBR_DIR)/files/etc/hotplug.d/iface/71-pbr $(1)/etc/hotplug.d/iface/71-pbr
	$(INSTALL_BIN) $(PBR_DIR)/files/etc/init.d/pbr_patched $(1)/etc/init.d/pbr
	$(INSTALL_DATA) $(PBR_DIR)/files/etc/firewall.user.pbr $(1)/etc/firewall.user.pbr
	$(INSTALL_DIR) $(1)/etc/uci-defaults
	$(INSTALL_BIN) $(PBR_DIR)/files/etc/uci-defaults/90-pbr $(1)/etc/uci-defaults/90-pbr
endef

Package/pbr/default/install += $(newline)$(pbr_append)
