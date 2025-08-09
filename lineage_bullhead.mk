# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lge/bullhead/device.mk)
$(call inherit-product-if-exists, vendor/lge/bullhead/bullhead-vendor.mk)

# Inherit go configuration
$(call inherit-product, build/target/product/go_defaults.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_bullhead
PRODUCT_DEVICE := bullhead
PRODUCT_BRAND := Android
PRODUCT_MODEL := Nexus 5X
PRODUCT_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bullhead \
    PRIVATE_BUILD_DESC="bullhead-user 8.1.0 OPM7.181005.003 4984324 release-keys"

BUILD_FINGERPRINT := google/bullhead/bullhead:8.1.0/OPM7.181005.003/4984324:user/release-keys
