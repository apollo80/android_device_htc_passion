# Release name
#PRODUCT_RELEASE_NAME := GN-GSM

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common apollo80 stuff.
$(call inherit-product, vendor/apollo80/config/tools.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/passion/aosp_passion.mk)

#
# Setup device specific product configuration.
#
PRODUCT_DEVICE  := passion
PRODUCT_NAME    := cm_passion
PRODUCT_BRAND   := google
PRODUCT_MODEL   := Nexus One
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=passion BUILD_FINGERPRINT=google/passion/passion:2.3.6/GRK39F/189904:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.3.6 GRK39F 189904 release-keys"


#
# Set up the product codename, build version & MOTD.
#
PRODUCT_CODENAME := Perdo
PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your Google Nexus One\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

# Copy compatible bootanimation
#PRODUCT_COPY_FILES += \
#    vendor/ev/prebuilt/wvga/media/bootanimation.zip:system/media/bootanimation.zip

# Hot reboot
#PRODUCT_PACKAGE_OVERLAYS += vendor/ev/overlay/hot_reboot
