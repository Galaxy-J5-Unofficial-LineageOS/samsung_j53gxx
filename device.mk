#
# Copyright (C) 2017-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage

#Inherit from vendor
$(call inherit-product, vendor/samsung/j53gxx/j53gxx-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/j5-common/device-common.mk)

LOCAL_PATH := device/samsung/j53gxx

# System properties
-include $(LOCAL_PATH)/system_prop.mk

#GAPPS config
GAPPS_VARIANT := pico
GAPPS_PRODUCT_PACKAGES += Youtube
GAPPS_PRODUCT_PACKAGES += GoogleDialer 
GAPPS_PRODUCT_PACKAGES += Wallpapers
$(call inherit-product, vendor/opengapps/build/opengapps-packages.mk)

# Common overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
