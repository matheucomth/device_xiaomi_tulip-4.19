#
# Copyright (C) 2018-2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit some common Palladium stuff
$(call inherit-product, vendor/palladium/config/common_full_phone.mk)

# Inherit from twolip device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# PalladiumOS Properties
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_LIVE_WALLPAPERS := false
PALLADIUM_BUILD_TYPE := OFFICIAL

# #Props for About Phone
PRODUCT_PRODUCT_PROPERTIES += \
    ro.palladiumdevice.maintainer=Muti605 \
    ro.palladiumdevice.cpu=SDM636 \
    ro.palladiumdevice.display=6.26 \
    ro.palladiumdevice.displaytype=FULLHD+ \
    ro.palladiumdevice.battery=4000mAh \
    ro.palladiumdevice.camera=12MP+5MP

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := twolip
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := palladium_twolip
PRODUCT_MODEL := Redmi Note 6 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := tulip


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 12 SQ1D.211205.016.A1 7957957 release-keys"

BUILD_FINGERPRINT := google/raven/raven:12/SQ1D.211205.016.A1/7957957:user/release-keys