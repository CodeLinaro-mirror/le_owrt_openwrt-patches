define Package/miniupnpd-iptables_append
        DEPENDS+=+diag +dsutils +qmi-framework +libqcmap_client +libqcmaputils +libqmi-ip +qmiservices +libopenssl
endef

CONFIGURE_ARGS:= $(filter-out --leasefile,$(CONFIGURE_ARGS))
CONFIGURE_ARGS:= $(filter-out --portinuse,$(CONFIGURE_ARGS))

Package/miniupnpd-iptables += $(newline)$(Package/miniupnpd-iptables_append)