#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lemonade device.
$(call inherit-product, device/oneplus/lemonade/device.mk)

# Inherit some common RiceDroidOSS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device Identifier.
PRODUCT_NAME := lineage_lemonade
PRODUCT_DEVICE := lemonade
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := LE2115

PRODUCT_SYSTEM_NAME := OnePlus9
PRODUCT_SYSTEM_DEVICE := OnePlus9

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus9-user 13 TP1A.220624.003 R.202208030717 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/OnePlus9/OnePlus9:13/TP1A.220624.003/R.202208030717:user/release-keys

# gtrcd
RICE_CHIPSET := SDM888-5G
RICE_MAINTAINER := jacktheripper

# Targets
TARGET_EXCLUDES_AUDIOFX := true
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_DISABLE_GRALLOC2_P010_SUPPORT := false
TARGET_ENABLE_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_ENABLE_PRIVAPP_ENFORCEMENT := true
TARGET_ENABLE_PIXEL_GBOARD_PADDINGS := true
TARGET_USE_PIXEL_FINGERPRINT := true
TARGET_HAS_UDFPS := true
TARGET_KERNEL_OPTIONAL_LD := false

# Camera
TARGET_USES_OPLUS_CAMERA := true
TARGET_BUILD_APERTURE_CAMERA := false
TARGET_BUILD_GRAPHENEOS_CAMERA := false

# Bootanimation
SUSHI_BOOTANIMATION := 1080

# GApps
WITH_GMS := true
TARGET_USE_GOOGLE_TELEPHONY := true
