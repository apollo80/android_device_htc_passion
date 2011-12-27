$(call inherit-product, device/htc/passion/full_passion.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/ev/config/common_full_phone.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := ev_passion
PRODUCT_BRAND := google
PRODUCT_DEVICE := passion
PRODUCT_MODEL := Nexus One
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=passion BUILD_ID=GRK39F \
BUILD_FINGERPRINT=google/passion/passion:2.3.6/GRK39F/189904:user/release-keys \
PRIVATE_BUILD_DESC="passion-user 2.3.6 GRK39F 189904 release-keys"

#
# Set up the product codename, build version & MOTD.
#
PRODUCT_CODENAME := Perdo
ifneq ($(MINISKIRT),true)
PRODUCT_VERSION_DEVICE_SPECIFIC := p3
else
PRODUCT_VERSION_DEVICE_SPECIFIC := p3-Miniskirt
endif

PRODUCT_MOTD :="\n\n\n--------------------MESSAGE---------------------\nThank you for choosing Evervolv for your Google Nexus One\nPlease visit us at \#evervolv on irc.freenode.net\nFollow @preludedrew for the latest Evervolv updates\nGet the latest rom at evervolv.com\n------------------------------------------------\n"

#
# Extra Packages
#
PRODUCT_PACKAGES += Stk

ifneq ($(MINISKIRT),true)
PRODUCT_PACKAGES += Camera
endif

# Copy hdpi specific bootanimation
#PRODUCT_COPY_FILES +=  \
#    vendor/ev/prebuilt/hvga/media/bootanimation.zip:system/media/bootanimation.zip
# Use the n1 stock boot animation until we get a custom evervolv one.
# Nexus One Stock Boot Animation
PRODUCT_COPY_FILES += device/htc/passion/extras/nexus-bootanimation.zip:system/media/bootanimation.zip

# Get some gapps
ifeq ($(GAPPS),true)
$(call inherit-product, vendor/ev/prebuilt/gapps/gapps.mk)
endif
