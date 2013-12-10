# Copyright (C) 2009 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for passion hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)

$(call inherit-product, device/htc/passion/passion_us.mk)

#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
## -- $(call inherit-product, $(SRC_EVERVOLV_DIR)/product/lite_base_telephony.mk)
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_passion
PRODUCT_DEVICE := passion
PRODUCT_MODEL := Full Android on Passion
