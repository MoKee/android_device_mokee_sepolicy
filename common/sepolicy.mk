#
# This policy configuration will be used by all products that
# inherit from MoKee
#

ifeq ($(TARGET_COPY_OUT_VENDOR), vendor)
ifeq ($(BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE),)
TARGET_USES_PREBUILT_VENDOR_SEPOLICY ?= true
endif
endif

BOARD_PLAT_PUBLIC_SEPOLICY_DIR += \
    device/mokee/sepolicy/common/public

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/mokee/sepolicy/common/private

ifeq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/mokee/sepolicy/common/dynamic \
    device/mokee/sepolicy/common/system
else
BOARD_SEPOLICY_DIRS += \
    device/mokee/sepolicy/common/dynamic \
    device/mokee/sepolicy/common/vendor
endif
