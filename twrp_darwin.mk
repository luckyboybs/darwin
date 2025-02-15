#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

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
