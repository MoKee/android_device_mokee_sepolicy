#
# This policy configuration will be used by all qcom products
# that inherit from MoKee
#

BOARD_PLAT_PRIVATE_SEPOLICY_DIR += \
    device/mokee/sepolicy/qcom/private

BOARD_SEPOLICY_DIRS += \
    device/mokee/sepolicy/qcom/common \
    device/mokee/sepolicy/qcom/$(TARGET_BOARD_PLATFORM)
