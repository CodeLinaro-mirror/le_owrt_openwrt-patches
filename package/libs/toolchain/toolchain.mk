include $(INCLUDE_DIR)/target.mk

ifeq ($(CONFIG_TARGET_PROFILE), "cpe")
  ifeq ($(TARGET_VARIANT), debug)
    ifneq ($(filter $(BOARD), sdx85 sdxecho),)
      STRIP:=:
      RSTRIP:=:
    endif
  endif
endif
