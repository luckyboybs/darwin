#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#


DEVICE_PATH := device/deltainno/darwin



# Inherit from darwin device
$(call inherit-product, device/deltainno/darwin/device.mk)

PRODUCT_DEVICE := darwin
PRODUCT_NAME := twrp_darwin
PRODUCT_BRAND := SMARTISAN
PRODUCT_MODEL := DT2002C
PRODUCT_MANUFACTURER := deltainno

PRODUCT_GMS_CLIENTID_BASE := android-deltainno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="aries-user 11 RKQ1.201217.002 1658135499 dev-keys"

BUILD_FINGERPRINT := SMARTISAN/aries/aries:11/RKQ1.201217.002/1658135499:user/dev-keys

# Theme
TW_STATUS_ICONS_ALIGN := center
TW_Y_OFFSET := 88
TW_H_OFFSET := -88