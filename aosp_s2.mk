# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit device configuration
$(call inherit-product, device/leeco/s2/full_s2.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := s2
PRODUCT_NAME := aosp_s2
PRODUCT_BRAND := LeEco
PRODUCT_MANUFACTURER := LeMobile

PRODUCT_GMS_CLIENTID_BASE := android-leeco

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=le_s2 \
    PRODUCT_NAME=Le2_CN \
    PRIVATE_BUILD_DESC="s2-user 6.0.1 IIXOSOP5801910121S 44 release-keys"

BUILD_FINGERPRINT := Letv/Le2_WW/le_s2_ww:6.0.1/IIXOSOP5801910121S/44:user/release-keys

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += ro.product.model

# Release name
PRODUCT_RELEASE_NAME := s2

# adding OTA support
export EXTENDED_BUILD_TYPE = OFFICIAL

