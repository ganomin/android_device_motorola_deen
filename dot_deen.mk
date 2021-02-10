#
# Copyright (C) 2019 The LineageOS Open Source Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from deen device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common dotOS stuff
$(call inherit-product, vendor/dot/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := deen
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := dot_deen
PRODUCT_MODEL := Motorola One

# Inherit some extra dotOS stuff
TARGET_BOOT_ANIMATION_RES := 720
TARGET_SCREEN_DENSITY := 420
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true
TARGET_VENDOR := Motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=deen \
        PRIVATE_BUILD_DESC="redfin-user 11 RQ1A.210205.004 7038034 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ1A.210205.004/7038034:user/release-keys"
