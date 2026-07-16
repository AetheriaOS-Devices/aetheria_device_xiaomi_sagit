#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from msm8998-common
include device/xiaomi/msm8998-common/BoardConfigCommon.mk
include vendor/aetheria/config/BoardConfigAetheria.mk

DEVICE_PATH := device/xiaomi/sagit

# Kernel
TARGET_KERNEL_CONFIG += vendor/xiaomi/sagit.config
TARGET_KERNEL_VERSION := 4.4

# Assert
TARGET_OTA_ASSERT_DEVICE := sagit

# Display
TARGET_SCREEN_DENSITY := 480

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Inherit from proprietary files
include vendor/xiaomi/sagit/BoardConfigVendor.mk

# Kernel clang
TARGET_KERNEL_CLANG_PATH := $(BUILD_TOP)/prebuilts/clang/kernel/linux-x86/clang-r416183b

# Allow make for kernel build
KERNEL_MAKE_CMD := prebuilts/build-tools/linux-x86/bin/make
