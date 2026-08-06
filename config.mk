VENDOR_PATH := vendor/MiuiCamera

RELAX_USES_LIBRARY_CHECK := true

PRODUCT_PACKAGES += \
    MiuiCamera \
    MiuiExtraPhoto

###############################################
# Product
###############################################

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(VENDOR_PATH)/product,$(TARGET_COPY_OUT_PRODUCT))

###############################################
# System
###############################################

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system,$(TARGET_COPY_OUT_SYSTEM))

###############################################
# System_ext
###############################################

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system_ext,$(TARGET_COPY_OUT_SYSTEM_EXT))

###############################################
# Vendor
###############################################

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(VENDOR_PATH)/vendor,$(TARGET_COPY_OUT_VENDOR))

###############################################
# Soong namespace
###############################################

PRODUCT_SOONG_NAMESPACES += \
    vendor/MiuiCamera
