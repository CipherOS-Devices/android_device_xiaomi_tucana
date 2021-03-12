#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/toco

# Kernel
TARGET_KERNEL_CONFIG := toco_defconfig

# Screen density
TARGET_SCREEN_DENSITY := 440

# Inherit from proprietary files
include vendor/xiaomi/toco/BoardConfigVendor.mk
