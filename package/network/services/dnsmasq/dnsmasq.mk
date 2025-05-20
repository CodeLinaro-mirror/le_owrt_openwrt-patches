DNSMASQ_DIR:=$(dir $(abspath $(lastword $(MAKEFILE_LIST))))
MAKE_FLAGS += CFLAGS="$(TARGET_CFLAGS) -DHAVE_BROKEN_RTC"
define dnsmasq_append
	$(INSTALL_DIR) $(1)/etc
	$(CP) $(DNSMASQ_DIR)/files/dnsmasq.conf $(1)/etc/dnsmasq.conf
endef

Package/dnsmasq/install += $(newline)$(dnsmasq_append)
