#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Configure base.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Configure core_64_bit_only.mk
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Configure gsi_keys.mk
#$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Configure Virtual A/B
#$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# Configure SDCard replacement functionality
#$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Configure twrp
#$(call inherit-product, vendor/twrp/config/common.mk)

# define hardware platform
PRODUCT_PLATFORM := kona

PRODUCT_PACKAGES += \
    bootctrl.smartisan_sm8250.recovery \
    android.hardware.boot@1.1-impl-qti.recovery

PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# SHIPPING API
ifeq ($(TW_USE_FBEV2), true)
PRODUCT_SHIPPING_API_LEVEL := 30
else
PRODUCT_SHIPPING_API_LEVEL := 29
endif

# qcom decryption
PRODUCT_PACKAGES_ENG += \
    qcom_decrypt \
    qcom_decrypt_fbe \
    init.recovery.qcom_decrypt.rc
    
# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION  := false

# otacert
PRODUCT_EXTRA_RECOVERY_KEYS += \
    $(DEVICE_PATH)/security/releasekey \
    $(DEVICE_PATH)/security/smartisan

# PRODUCT_RELEASE_NAME ro.twrp.device.name
PRODUCT_PROPERTY_OVERRIDES += ro.twrp.device.name=$(PRODUCT_RELEASE_NAME)

# 确保复制预编译文件
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/prebuilt/dtb.img:dtb.img \
    $(DEVICE_PATH)/prebuilt/dtbo.img:dtbo.img
