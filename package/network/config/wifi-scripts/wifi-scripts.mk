WIFI_DIR:=$(dir $(abspath $(lastword $(MAKEFILE_LIST))))

define wifi_install_append
	$(INSTALL_DIR) $(1)/sbin
	$(CP) $(WIFI_DIR)/files/sbin/wifi $(1)/sbin/wifi
	rm -rf $(1)/lib/netifd/wireless
	rm -rf $(1)/etc/hotplug.d/ieee80211/10-wifi-detect
endef

Package/wifi-scripts/install += $(newline)$(wifi_install_append)
