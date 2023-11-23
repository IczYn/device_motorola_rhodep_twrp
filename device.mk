#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
# Copyright (C) 2019-Present A-Team Digital Solutions
#

LOCAL_PATH := device/motorola/rhodep

# A/B
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS := \
    boot \
    dtbo \
    product \
    system \
    system_ext \
    vbmeta \
    vbmeta_system \
    vendor \
    vendor_boot

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

PRODUCT_PACKAGES += \
    otapreopt_script

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl-1.1-qti \
    libgptutils \
    bootctrl.holi \
    bootctrl.holi.recovery

PRODUCT_PACKAGES_DEBUG += \
    bootctl 

# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Shipping API Level
PRODUCT_SHIPPING_API_LEVEL := 31

# VNDK Level
PRODUCT_TARGET_VNDK_VERSION := 31

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# Health HAL
PRODUCT_PACKAGES += \
	android.hardware.health@2.1-impl.recovery

# Screen
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Update engine
PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

PRODUCT_PACKAGES_DEBUG += \
    update_engine_client

# Crypto
#PRODUCT_PACKAGES += \
#    qcom_decrypt \
#    qcom_decrypt_fbe

# Copy Modules For TouchScreen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/moto_f_usbnet.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/moto_f_usbnet.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/nova_0flash_mmi.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/nova_0flash_mmi.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/nvt_36xxx.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/nvt_36xxx.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/qpnp_adaptive_charge.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/qpnp_adaptive_charge.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/utags.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/utags.ko
