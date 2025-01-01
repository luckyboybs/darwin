#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Configure base.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Configure core_64_bit_only.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Configure gsi_keys.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Configure Virtual A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Configure SDCard replacement functionality
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Configure twrp
$(call inherit-product, vendor/twrp/config/common.mk)

LOCAL_PATH := device/deltainno/darwin

# Boot control HAL
PRODUCT_PACKAGES += \
    bootctrl.smartisan_sm8250 \
    bootctrl.smartisan_sm8250.recovery \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    android.hardware.boot@1.1-impl-qti.recovery
    android.hardware.boot@1.0-impl-wrapper.recovery \
    android.hardware.boot@1.0-impl-wrapper \
    android.hardware.boot@1.0-impl.recovery \

# fastbootd  
PRODUCT_PACKAGES += \
    fastbootd \
    android.hardware.fastboot@1.0-impl-mock

# SHIPPING API
PRODUCT_SHIPPING_API_LEVEL := 29
TARGET_ENFORCE_AB_OTA_PARTITION_LIST := true

# qcom decryption
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe
    
# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# OEM otacerts
PRODUCT_EXTRA_RECOVERY_KEYS += \
    $(DEVICE_PATH)/security/$(BOARD_VENDOR)1 \
    $(DEVICE_PATH)/security/$(BOARD_VENDOR)2 \
    $(DEVICE_PATH)/security/$(BOARD_VENDOR)3 \
    $(DEVICE_PATH)/security/$(BOARD_VENDOR)4

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true