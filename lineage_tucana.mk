#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from tucana device
$(call inherit-product, device/xiaomi/tucana/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_tucana
PRODUCT_DEVICE := tucana
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Faceunlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Maintainer
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cipher.maintainer=alibei
