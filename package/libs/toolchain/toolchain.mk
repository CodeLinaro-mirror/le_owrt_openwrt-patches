include $(INCLUDE_DIR)/target.mk

ifeq ($(BOARD), sdx85)
  ifeq ($(CONFIG_TARGET_PROFILE), "cpe")
    ifeq ($(TARGET_VARIANT), debug)
      STRIP:=:
      RSTRIP:=:
    endif
  endif
endif
