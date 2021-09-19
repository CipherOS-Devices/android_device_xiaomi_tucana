#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from tucana device
$(call inherit-product, device/xiaomi/tucana/device.mk)

# Inherit some common Cipher stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cipher.maintainer=alibei

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_tucana
PRODUCT_DEVICE := tucana
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi Note 10
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tucana-user 11 RKQ1.200826.002 V12.5.4.0.RFDMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/tucana/tucana:11/RKQ1.200826.002/V12.5.4.0.RFDMIXM:user/release-keys
