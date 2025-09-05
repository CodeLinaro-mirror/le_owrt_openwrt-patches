WIFI_DIR:=$(dir $(abspath $(lastword $(MAKEFILE_LIST))))


ifeq ($(CONFIG_PACKAGE_kmod-ath11k)$(CONFIG_PACKAGE_kmod-ath12k),)
define wifi_install_append
	$(INSTALL_DIR) $(1)/sbin
	$(CP) $(WIFI_DIR)/files/sbin/wifi $(1)/sbin/wifi
	rm -rf $(1)/lib/netifd/wireless
	rm -rf $(1)/etc/hotplug.d/ieee80211/10-wifi-detect
endef
endif

Package/wifi-scripts/install += $(newline)$(wifi_install_append)
