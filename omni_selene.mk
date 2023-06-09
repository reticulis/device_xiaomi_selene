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

# Inherit from selene device
$(call inherit-product, device/xiaomi/selene/device.mk)

PRODUCT_DEVICE := selene
PRODUCT_NAME := omni_selene
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 21061119AG
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="selene-user 12 SP1A.210812.016 V13.0.15.0.SKUMIXM release-keys"

BUILD_FINGERPRINT := Redmi/selene/selene:12/SP1A.210812.016/V13.0.15.0.SKUMIXM:user/release-keys
