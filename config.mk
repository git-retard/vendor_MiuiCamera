# Copyright (C) 2020 The PixelExperience Project
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

VENDOR_PATH := vendor/MiuiCamera

RELAX_USES_LIBRARY_CHECK := true

# PRODUCT_COPY_FILES += \
  #  $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/etc,system/etc) \
   # $(call find-copy-subdir-files,*,$(VENDOR_PATH)/product/etc,product/etc) \
    #$(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/priv-app/MiuiCamera/lib/arm64,system/priv-app/MiuiCamera/lib/arm64) \
 #   $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/priv-app/MiuiExtraPhoto/lib/arm64,system/priv-app/MiuiExtraPhoto/lib/arm64) \
  #  $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/lib64,system/lib64) \
   # $(call find-copy-subdir-files,*,$(VENDOR_PATH)/vendor/etc,vendor/etc) 

PRODUCT_PACKAGES += \
    MiuiCamera \
    MiuiExtraPhoto

# Product files

PRODUCT_COPY_FILES += \
    vendor/xiaomi/MiuiCamera/product/etc/device_features/gauguin.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/device_features/gauguin.xml

# System permissions

PRODUCT_COPY_FILES += \
    vendor/xiaomi/MiuiCamera/system/etc/permission/privapp-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuicamera.xml

# System sysconfig

PRODUCT_COPY_FILES += \
    vendor/xiaomi/MiuiCamera/system/etc/sysconfig/miuicamera-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuicamera-hiddenapi-package-whitelist.xml

# Public libraries

PRODUCT_COPY_FILES += \
    vendor/xiaomi/MiuiCamera/system/etc/public.libraries-xiaomi.txt:$(TARGET_COPY_OUT_SYSTEM)/etc/public.libraries-xiaomi.txt

# 32-bit libraries

PRODUCT_COPY_FILES += \
    vendor/xiaomi/MiuiCamera/system/lib/libcamera_algoup_jni.xiaomi.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libcamera_algoup_jni.xiaomi.so \
    vendor/xiaomi/MiuiCamera/system/lib/libcamera_jpegutil_jni.xiaomi.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libcamera_jpegutil_jni.xiaomi.so \
    vendor/xiaomi/MiuiCamera/system/lib/libcamera_mianode_jni.xiaomi.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libcamera_mianode_jni.xiaomi.so

# 64-bit libraries

PRODUCT_COPY_FILES += \
    vendor/xiaomi/MiuiCamera/system/lib64/libdoc_photo_c++_shared.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libdoc_photo_c++_shared.so \
    vendor/xiaomi/MiuiCamera/system/lib64/libdoc_photo.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libdoc_photo.so \
    vendor/xiaomi/MiuiCamera/system/lib64/libgallery_arcsoft_dualcam_refocus.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libgallery_arcsoft_dualcam_refocus.so \
    vendor/xiaomi/MiuiCamera/system/lib64/libgallery_arcsoft_portrait_lighting_c.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libgallery_arcsoft_portrait_lighting_c.so \
    vendor/xiaomi/MiuiCamera/system/lib64/libgallery_arcsoft_portrait_lighting.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libgallery_arcsoft_portrait_lighting.so \
    vendor/xiaomi/MiuiCamera/system/lib64/libgallery_mpbase.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libgallery_mpbase.so \
    vendor/xiaomi/MiuiCamera/system/lib64/libmegvii_bokeh_jni.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libmegvii_bokeh_jni.so \
    vendor/xiaomi/MiuiCamera/system/lib64/libmibokeh_gallery.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libmibokeh_gallery.so \
    vendor/xiaomi/MiuiCamera/system/lib64/libmisr.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libmisr.so \
    vendor/xiaomi/MiuiCamera/system/lib64/libmotion_photo_c++_shared.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libmotion_photo_c++_shared.so \
    vendor/xiaomi/MiuiCamera/system/lib64/libmotion_photo_mace.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libmotion_photo_mace.so \
    vendor/xiaomi/MiuiCamera/system/lib64/libmotion_photo.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libmotion_photo.so \
    vendor/xiaomi/MiuiCamera/system/lib64/librefocus_mibokeh.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/librefocus_mibokeh.so \
    vendor/xiaomi/MiuiCamera/system/lib64/librefocus.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/librefocus.so \
    vendor/xiaomi/MiuiCamera/system/lib64/libselection.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libselection.so \
    vendor/xiaomi/MiuiCamera/system/lib64/libwa_refocus_extraphoto.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libwa_refocus_extraphoto.so

# Vendor permissions

PRODUCT_COPY_FILES += \
    vendor/xiaomi/MiuiCamera/vendor/etc/permission/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    vendor/xiaomi/MiuiCamera/vendor/etc/permission/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    vendor/xiaomi/MiuiCamera/vendor/etc/permission/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    vendor/xiaomi/MiuiCamera/vendor/etc/permission/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml

# Thermal configs

PRODUCT_COPY_FILES += \
    vendor/xiaomi/MiuiCamera/vendor/etc/thermal-camera.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-camera.conf \
    vendor/xiaomi/MiuiCamera/vendor/etc/thermal-india-camera.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-india-camera.conf \
    vendor/xiaomi/MiuiCamera/vendor/etc/thermal-per-camera.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-per-camera.conf

# Soong
PRODUCT_SOONG_NAMESPACES += \
    vendor/MiuiCamera
