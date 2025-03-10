WIFI_DIR:=$(dir $(abspath $(lastword $(MAKEFILE_LIST))))

define wifi_install_append
	$(INSTALL_DIR) $(1)/sbin
	$(CP) $(WIFI_DIR)/files/sbin/wifi $(1)/sbin/wifi
	rm -rf $(1)/lib/netifd/wireless
endef

Package/wifi-scripts/install += $(newline)$(wifi_install_append)