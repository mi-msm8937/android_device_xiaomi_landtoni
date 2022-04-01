#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common landtoni-common
include device/xiaomi/landtoni-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/landtoni

# Asserts
TARGET_OTA_ASSERT_DEVICE := landtoni,land,santoni

# Camera
TARGET_PROCESS_SDK_VERSION_OVERRIDE := \
    /vendor/bin/mm-qcamera-daemon=23

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_landtoni
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_landtoni

# Kernel
TARGET_KERNEL_CONFIG := mi8937_defconfig

# Security patch level
VENDOR_SECURITY_PATCH := 2017-04-01

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Inherit from the proprietary version
include vendor/xiaomi/landtoni/BoardConfigVendor.mk
