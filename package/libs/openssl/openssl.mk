define Package/libopenssl-conf
    $(call Package/openssl/Default)
    SUBMENU:=SSL
    TITLE:=/etc/ssl/openssl.cnf config file
    DEPENDS:=libopenssl +libopenssl-legacy
endef
