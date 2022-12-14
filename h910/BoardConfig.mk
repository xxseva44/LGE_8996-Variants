#
# Copyright (C) 2017-2018 The LineageOS Project
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

DEVICE_PATH := device/lge/h910

# inherit from common v20
-include device/lge/v20-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := h910,us996,elsa,h915

# Kernel
TARGET_KERNEL_CONFIG := lineageos_h910_defconfig
BOARD_KERNEL_IMAGE_NAME := Image.lz4-dtb
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel/$(BOARD_KERNEL_IMAGE_NAME)
TARGET_FORCE_PREBUILT_KERNEL := true

# inherit from the proprietary version
include vendor/lge/h910/BoardConfigVendor.mk
