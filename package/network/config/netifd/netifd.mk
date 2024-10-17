define netifd_append
	chmod 0644 $(1)/lib/netifd/netifd-proto.sh
endef

Package/netifd/install += $(newline)$(netifd_append)
