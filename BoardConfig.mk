# inherit common device tree
-include device/oppo/msm8974-common/BoardConfigCommon.mk

LOCAL_PATH := device/oppo/find7op

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := find7op
TARGET_OTA_ASSERT_DEVICE := bacon,A0001

# Enable ART optimization
ART_USE_OPTIMIZING_COMPILER := true

# Use cortex-a15 optimized Uber toolchain
TARGET_GCC_VERSION_EXP := 5.x-cortex-a15
TARGET_LEGACY_GCC_VERSION := 5.x-cortex-a15

# Enable native exFAT and NTFS kernel driver
#TARGET_KERNEL_HAVE_NTFS := true
#TARGET_KERNEL_HAVE_EXFAT := true

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Bootzip filename
BOOT_ZIP_OUT_FILE := OmniBear-$(TARGET_DEVICE)-$(PLATFORM_VERSION)-$(shell date +"%Y%m%d")

# Partition info
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00F00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00F00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1388314624
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221225472
BOARD_FLASH_BLOCK_SIZE := 131072

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# NFC
NFC_NXP_CHIP_TYPE := PN547C2

# Encryption
TARGET_HW_DISK_ENCRYPTION := true
TARGET_CRYPTFS_HW_PATH := device/qcom/common/cryptfs_hw

# Recovery:Start

TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/configs/fstab.find7op
RECOVERY_SDCARD_ON_DATA := true
