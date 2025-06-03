#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
# Identifier for SoC folder
#COMMON_SOC := sm8250
# Device path for OEM device tree
DEVICE_PATH := device/$(PRODUCT_MANUFACTURER)/$(PRODUCT_DEVICE)

#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)
# Configure base.mk
#$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from darwin device
$(call inherit-product, device/deltainno/darwin/device.mk)

# Common path for device trees
#COMMON_PATH := device/$(PRODUCT_BRAND)/$(COMMON_SOC)-common

# Release name
PRODUCT_RELEASE_NAME := darwin

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := darwin
PRODUCT_NAME := twrp_darwin
PRODUCT_BRAND := SMARTISAN
PRODUCT_MODEL := DT2002C
PRODUCT_MANUFACTURER := deltainno

# Theme
TW_STATUS_ICONS_ALIGN := center
TW_Y_OFFSET := 88
TW_H_OFFSET := -88