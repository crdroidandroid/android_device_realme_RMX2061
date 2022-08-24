#
# Copyright (C) 2018-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from RMX2061 device
$(call inherit-product, device/realme/RMX2061/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Target
TARGET_SUPPORTS_QUICK_TAP := true

#AOSP Recovery
TARGET_USES_AOSP_RECOVERY := true

TARGET_DISABLE_EPPE := true

# Inherit some common AOSP stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier
PRODUCT_NAME := lineage_RMX2061
PRODUCT_DEVICE := RMX2061
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX2061
PRODUCT_MANUFACTURER := realme

PRODUCT_SYSTEM_NAME := RMX2061
PRODUCT_SYSTEM_DEVICE := RMX2061

PRODUCT_GMS_CLIENTID_BASE := android-oppo

# Build properties
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="RMX2061-user 11 RKQ1.201112.002 1649930822295 release-keys" \
    BuildFingerprint=realme/RMX2061/RMX2061L1:11/RKQ1.201112.002/1649930822295:user/release-keys \
    DeviceName=RMX2061 \
    DeviceProduct=RMX2061 \
    SystemDevice=RMX2061 \
    SystemName=RMX2061

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# OMX
TARGET_SUPPORTS_OMX_SERVICE := false