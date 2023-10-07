#
# Copyright (C) 2021 The ArrowOS Project
# Copyright (C) 2023 Piotr Lange
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8250-common
$(call inherit-product, device/xiaomi/sm8250-common/kona.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Audio configs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# Camera
PRODUCT_PACKAGES += \
    libMegviiFacepp-0.5.2 \
    libmegface

# Notchbar killer
PRODUCT_PACKAGES += \
    NotchBarKiller

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \

PRODUCT_PACKAGES += \
    ApolloSettingsOverlay

PRODUCT_ENFORCE_RRO_TARGETS := *

# Shims
PRODUCT_PACKAGES += \
    lib-watermarkshim

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
    
# Camera Extensions
PRODUCT_SYSTEM_PROPERTIES += \
    ro.camerax.extensions.enabled=true

# Camera Extensions permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/permissions/camerax-vendor-extensions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/camerax-vendor-extensions.xml

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/apollo/apollo-vendor.mk)
