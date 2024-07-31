#
# Copyright (C) 2021 The LineageOS Project
# Copyright (C) 2024 The Project Elixir
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common orion stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from vayu device
$(call inherit-product, device/xiaomi/vayu/device.mk)

# OrionOS
ORION_MAINTAINER := ぞうしろかずわ
ORION_MAINTAINER_LINK := https://t.me/KazuwaZoshiro
ORION_BUILD_TYPE := UNOFFICIAL
ORION_GAPPS := true
TARGET_ENABLE_BLUR := false
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_HAS_UDFPS := false
BUILD_GOOGLE_CONTACTS := true
BUILD_GOOGLE_DIALER := true
BUILD_GOOGLE_MESSAGE := true

# BRICK FLAGS
PRODUCT_NAME := orion_vayu
PRODUCT_DEVICE := vayu
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X3 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vayu_global-user 13 RKQ1.200826.002 V14.0.3.0.TJUMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/vayu_global/vayu:13/RKQ1.200826.002/V14.0.3.0.TJUMIXM:user/release-keys
