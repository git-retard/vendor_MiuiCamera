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

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/etc,system/etc) \
    $(call find-copy-subdir-files,*,$(VENDOR_PATH)/product/etc,product/etc) \
    $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/priv-app/MiuiCamera/lib/arm64,system/priv-app/MiuiCamera/lib/arm64) \
    $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/priv-app/MiuiExtraPhoto/lib/arm64,system/priv-app/MiuiExtraPhoto/lib/arm64) \
    $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/lib64,system/lib64) \
    $(call find-copy-subdir-files,*,$(VENDOR_PATH)/vendor/etc,vendor/etc) 

PRODUCT_PACKAGES += \
    MiuiCamera \
    MiuiCameraOverlay \
    MiuiExtraPhoto

PRODUCT_SYSTEM_PROPERTIES += \
    persist.vendor.camera.enableAdvanceFeatures=0x3E7 \
    persist.vendor.camera.multicam=TRUE \
    persist.vendor.camera.multicam.fpsmatch=TRUE \
    persist.vendor.camera.multicam.framesync=1 \
    persist.vendor.camera.multicam.hwsync=TRUE \
    persist.vendor.camera.privapp.list=com.android.camera \
    persist.vendor.camera.picturesize.limit.enable=false \
    ro.miui.notch=1 \
    ro.miui.ui.version.code=13 \
    ro.miui.ui.version.name=V130 \
    ro.miui.region=CN \
    ro.miui.build.region=cn \
    ro.fota.oem=Xiaomi \
    ro.boot.camera.config=_pro \
    ro.com.google.lens.oem_camera_package=com.android.camera

# Soong
PRODUCT_SOONG_NAMESPACES += \
    vendor/MiuiCamera
