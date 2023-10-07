#
# Copyright (C) 2021 The ArrowOS Project
# Copyright (C) 2023 Piotr Lange
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from apollo device
$(call inherit-product, device/xiaomi/apollo/device.mk)

# Inherit some common SuperiorOS stuff.
$(call inherit-product, vendor/superior/config/common.mk)

# Inherit Miui Camera
$(call inherit-product-if-exists, vendor/xiaomi/apollo-miuicamera/products/miuicamera.mk)

# SuperiorOS flags
BUILD_WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_HAS_UDFPS := false

IS_PHONE := true
DEVICE_MAINTAINER := PiotrZPL

PRODUCT_CHARACTERISTICS := nosdcard

WITH_GMS := true
WITH_GAPPS := true
TARGET_USE_GOOGLE_TELEPHONY := true

PRODUCT_NAME := superior_apollo
PRODUCT_DEVICE := apollo
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi Mi 10T

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="apollo_global-user 12 RKQ1.211001.001 V14.0.1.0.SJDMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/apollo_global/apollo:12/RKQ1.211001.001/V14.0.1.0.SJDMIXM:user/release-keys
