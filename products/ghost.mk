$(call inherit-product, vendor/hexagon/configs/common.mk)

# Inherit telephony stuff
$(call inherit-product, vendor/hexagon/configs/telephony.mk)

$(call inherit-product, vendor/hexagon/configs/nfc_enhanced.mk)

# Inherit AICP device configuration for ghost
$(call inherit-product, device/motorola/ghost/full_ghost.mk)


# Setup device specific product configuration.
PRODUCT_RELEASE_NAME := MOTO X
PRODUCT_NAME := hexagon_ghost

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
	DEVICE_MAINTAINERS="Omkar (Megatron007)"

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
-include vendor/hexagon/configs/bootanimation.mk
