#
# This policy configuration will be used by atv products that
# inherit from MoKee
#

ifneq ($(TARGET_USES_PREBUILT_VENDOR_SEPOLICY), true)
BOARD_SEPOLICY_DIRS += \
    device/mokee/sepolicy/atv/vendor
endif
