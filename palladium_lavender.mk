#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit from lavender device
$(call inherit-product, device/xiaomi/lavender/device.mk)

# Inherit dalvik from native
$(call inherit-product, device/xiaomi/lavender/dalvikheap.mk)

# Inherit some common PalladiumOS stuff.
$(call inherit-product, vendor/palladium/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080

# PalladiumOS Properties
TARGET_INCLUDE_WIFI_EXT := true
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_INCLUDE_STOCK_ARCORE := true
PALLADIUM_BUILDTYPE := OFFICIAL
TARGET_USES_BLUR := true
PALLADIUM_BUILD_VARIANT := GAPPS

# Maintainer & Device Props
PRODUCT_PRODUCT_PROPERTIES += \
    ro.palladiumdevice.maintainer=whtisusername \
    ro.palladiumdevice.cpu=SDM660 \
    ro.palladiumdevice.display=6.3 \
    ro.palladiumdevice.displaytype=FULLHD+ \
    ro.palladiumdevice.battery=4000mAh \
    ro.palladiumdevice.camera=12MP/48MP+5MP

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := palladium_lavender
PRODUCT_DEVICE := lavender
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=lavender \
    PRODUCT_NAME=lavender \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ1A.210105.003 7005429 release-keys"

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ1A.210105.003/7005429:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
