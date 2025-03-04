#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8150-common
include device/xiaomi/sm8150-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/vayu

BUILD_BROKEN_DUP_RULES := true

# Assert
TARGET_OTA_ASSERT_DEVICE := vayu,bhima

# Audio
TARGET_PROVIDES_AUDIO_EXTNS := true

# Camera
TARGET_CAMERA_BOOTTIME_TIMESTAMP := true

# Display
TARGET_SCREEN_DENSITY := 410

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_vayu
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_vayu

# Kernel
TARGET_KERNEL_CONFIG := vayu_user_defconfig

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Sepolicy
include vendor/xiaomi/vayu-miuicamera/products/board.mk

# Inherit from the proprietary version
include vendor/xiaomi/vayu/BoardConfigVendor.mk
