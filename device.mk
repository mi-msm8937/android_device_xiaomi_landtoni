#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Device
DEVICE := landtoni

# Inherit from landtoni-common
$(call inherit-product, device/xiaomi/landtoni-common/landtoni.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/land_mixer_paths_qrd_sku1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/land_mixer_paths_qrd_sku1.xml \
    $(LOCAL_PATH)/audio/santoni_mixer_paths_qrd_sku1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/santoni_mixer_paths_qrd_sku1.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/blank.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_sku1.xml

# Camera
PRODUCT_PACKAGES += \
    camera.land \
    camera.santoni \
    libLmcamera_interface \
    libLmjpeg_interface \
    libLmlib2d_interface \
    libLomx_core

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/ist30xx_ts_input.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/ist30xx_ts_input.kl

# Rootdir
PRODUCT_PACKAGES += \
    init.xiaomi.device.rc \
    init.xiaomi.device.sh

# Shims
PRODUCT_PACKAGES += \
    libshims_android \
    libshims_binder \
    libshims_c_camera \
    libwui

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/landtoni/landtoni-vendor.mk)
