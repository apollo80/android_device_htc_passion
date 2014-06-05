#
# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

## (1) First, the most specific values, i.e. the aspects that are specific to GSM


# packages from system/app
SDEXT_PRODUCT_PACKAGES := \
    Apollo \
    BasicDreams \
    Bluetooth \
    BluetoothExt \
    Browser \
    Calculator \
    Calendar \
    Camera2 \
    CellBroadcastReceiver \
    CertInstaller \
    CMAccount \
    CMFileManager \
    CMWallpapers \
    DeskClock \
    Development \
    DocumentsUI \
    DownloadProviderUi \
    DSPManager \
    Email \
    Exchange2 \
    Galaxy4 \
    Gallery2 \
    HoloSpiralWallpaper \
    HTMLViewer \
    InCallUI \
    KeyChain \
    LatinIME \
    LiveWallpapers \
    LiveWallpapersPicker \
    LockClock \
    MagicSmokeWallpapers \
    NoiseField \
    PackageInstaller \
    PacProcessor \
    PhaseBeam \
    PhotoTable \
    PrintSpooler \
    Provision \
    QuickSearchBox \
    SoundRecorder \
    Stk \
    TelephonyProvider \
    Term \
    ThemeChooser \
    Torch \
    UserDictionaryProvider \
    VideoEditor \
    VisualizationWallpapers \
    VoicePlus \
    WAPPushManager \
    WhisperPush

# packages from system/priv-app
SDEXT_PRODUCT_PACKAGES += \
    Mms \
    PicoTts \
    Settings \
    Trebuchet

# packages from system/lib
SDEXT_PRODUCT_PACKAGES += \
    libwebviewchromium \
    \
    libFFmpegExtractor \
    libavcodec \
    libavformat \
    libavutil \
    libswresample \
    libswscale


# other packages
SDEXT_PRODUCT_PACKAGES += \
    icu-data
