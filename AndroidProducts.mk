#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/lineage_landtoni.mk

COMMON_LUNCH_CHOICES := \
    lineage_landtoni-user \
    lineage_landtoni-userdebug \
    lineage_landtoni-eng

PRODUCT_MAKEFILES += \
    $(LOCAL_DIR)/revengeos_landtoni.mk

COMMON_LUNCH_CHOICES += \
    revengeos_landtoni-user \
    revengeos_landtoni-userdebug \
    revengeos_landtoni-eng
