#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from Infinix-X672 device
$(call inherit-product, device/infinix/X672/device.mk)

PRODUCT_DEVICE := X672
PRODUCT_NAME := twrp_X672
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X672
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x672_h815-user 12 SP1A.210812.016 399953 release-keys"

BUILD_FINGERPRINT := Infinix/X672-GL/Infinix-X672:12/SP1A.210812.016/230809V1801:user/release-keys
