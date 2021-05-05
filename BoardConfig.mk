#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

BUILD_BROKEN_DUP_RULES := true

# Boot
BOARD_BOOT_HEADER_VERSION := 1

# Display density
TARGET_SCREEN_DENSITY := 440

# Inherit from sm6150-common
include device/xiaomi/sm6150-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/tucana

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Assert
TARGET_OTA_ASSERT_DEVICE := tucana
AUDIO_FEATURE_ELLIPTIC_ULTRASOUND_SUPPORT := true

# Audio
AUDIO_FEATURE_ENABLED_EXT_AMPLIFIER := true

# Fingerprint
TARGET_SURFACEFLINGER_FOD_LIB := //$(COMMON_PATH):libfod_extension
TARGET_USES_FOD_ZPOS := true
SOONG_CONFIG_xiaomiVars_uses_fod_extension := $(TARGET_USES_FOD_ZPOS)
SOONG_CONFIG_xiaomiVars_fod_pos_y := 1715

# Init
TARGET_INIT_VENDOR_LIB := libinit_tucana
TARGET_RECOVERY_DEVICE_MODULES := libinit_tucana

# Kernel
BOARD_KERNEL_BASE := 0x00000000
TARGET_KERNEL_CONFIG := vendor/lineage_tucana-oss_defconfig

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/configs/hidl/manifest.xml

ODM_MANIFEST_SKUS += \
    tucana

ODM_MANIFEST_TUCANA_FILES := $(DEVICE_PATH)/configs/hidl/manifest_tucana.xml

# NFC
TARGET_USES_NQ_NFC := true

# Inherit from the proprietary version
include vendor/xiaomi/tucana/BoardConfigVendor.mk
