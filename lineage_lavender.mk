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

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/fluid/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080

ifeq ($(WITH_GAPPS),true)
TARGET_INCLUDE_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_GAPPS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
endif

# Device identifier. This must come after all inclusions.

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := lavender
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := fluid_lavender
PRODUCT_MODEL := Redmi Note 7
IS_PHONE := true
FLUID_BUILD_TYPE := UNOFFICIAL

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := lavender

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lavender-user 10 QKQ1.190910.002 V12.0.1.0.QFGMIXM release-keys"

BUILD_FINGERPRINT := xiaomi/lavender/lavender:10/QKQ1.190910.002/V12.0.1.0.QFGMIXM:user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
  ro.fluid.maintainer=Mukul_Sharma \
  ro.fluid.cpu=SDM660
