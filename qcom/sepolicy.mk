#
# This policy configuration will be used by all qcom products
# that inherit from MoKee
#

BOARD_SEPOLICY_DIRS += \
    device/mokee/sepolicy/qcom/common \
    device/mokee/sepolicy/qcom/$(TARGET_BOARD_PLATFORM)
