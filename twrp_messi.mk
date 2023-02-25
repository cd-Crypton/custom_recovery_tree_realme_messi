# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
# SPDX-License-Identifier: Apache-2.0

PRODUCT_RELEASE_NAME := messi
PRODUCT_DEVICE := $(PRODUCT_RELEASE_NAME)
PRODUCT_NAME := twrp_$(PRODUCT_RELEASE_NAME)
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme 9 4G
PRODUCT_PLATFORM := bengal
PRODUCT_MANUFACTURER := realme

# Inherit from RMX3521 Device
$(call inherit-product, device/realme/messi/messi.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit some common twrp stuff.
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

# Inherit some common pbrp stuff.
$(call inherit-product-if-exists, vendor/pb/config/common.mk)

# Installs gsi keys into ramdisk, to boot a GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Virtual A/B
ENABLE_VIRTUAL_AB := true
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)
