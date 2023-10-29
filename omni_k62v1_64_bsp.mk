#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from k62v1_64_bsp device
$(call inherit-product, device/vivo/k62v1_64_bsp/device.mk)

PRODUCT_DEVICE := k62v1_64_bsp
PRODUCT_NAME := omni_k62v1_64_bsp
PRODUCT_BRAND := vivo
PRODUCT_MODEL := vivo 1904
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo-rev1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k62v1_64_bsp-user 9 PPR1.180610.011 compiler09051804 release-keys"

BUILD_FINGERPRINT := vivo/1904/1904:9/PPR1.180610.011/compiler09051804:user/release-keys
