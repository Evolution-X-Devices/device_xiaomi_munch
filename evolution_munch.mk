#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common EvolutionX stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Inherit from Munch device
$(call inherit-product, device/xiaomi/munch/device.mk)

# Device identifiers. These must come after all inclusions.
PRODUCT_NAME := evolution_munch
PRODUCT_DEVICE := munch
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F4
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi


PRODUCT_BUILD_PROP_OVERRIDES += \
   PRIVATE_BUILD_DESC="missi-user 12 SKQ1.211006.001 V13.0.5.0.SLMMIXM release-keys"

BUILD_FINGERPRINT := Redmi/munch/munch:12/RKQ1.211001.001/V13.0.5.0.SLMMIXM:user/release-keys

# EvolutionX bundles gapps by default
WITH_GMS := true

# EvolutionX specific values
EVO_BUILD_TYPE := OFFICIAL
EVO_SIGNED := false
TARGET_SUPPORTS_QUICK_TAP := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_CALL_RECORDING := true
