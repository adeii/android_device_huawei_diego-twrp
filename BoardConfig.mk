#
# Copyright (C) 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/huawei/london

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_BOARD_PLATFORM := msm8937
TARGET_BOARD_PLATFORM_GPU := qcom-adreno505

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm8937
TARGET_NO_BOOTLOADER := true

# Kernel 
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci slub_min_objects=12 unmovable_isolate1=2:192M,3:224M,4:256M unmovable_isolate2=2:64M,3:80M,4:80M  androidboot.selinux=permissive buildvariant=user
# androidboot.selinux=enforcing buildvariant=user
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_TAGS_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x02000000
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/dummykernel

# Partitions
#BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_BOOTIMAGE_PARTITION_SIZE := 77777216 #just to bypass limit
BOARD_CACHEIMAGE_PARTITION_SIZE := 126877696
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 77554432 #just to bypass limit
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2576980377
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26628797235
BOARD_PERSISTIMAGE_PARTITION_SIZE := 28835840
BOARD_FLASH_BLOCK_SIZE := 131072

# Crypto
# TARGET_CRYPTFS_HW_PATH := $(LOCAL_PATH)/cryptfs_hw
TARGET_HW_DISK_ENCRYPTION := true

# Recovery
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# TWRP Configuration
RECOVERY_VARIANT= twrp
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_THEME := portrait_hdpi
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_L_CRYPTO := true
TW_MAX_BRIGHTNESS := 255
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_EXCLUDE_SUPERSU := true
TW_SCREEN_BLANK_ON_BOOT := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/twrp.fstab
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_SDCARD_ON_DATA := true
TW_IGNORE_MISC_WIPE_DATA := true
