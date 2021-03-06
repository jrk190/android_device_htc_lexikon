#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

# This file is generated by device/common/generate-blob-scripts.sh - DO NOT EDIT

DEVICE=lexikon
MANUFACTURER=htc
VENDOR_DIR="../../../vendor/$MANUFACTURER/$DEVICE/proprietary"

mkdir -p $VENDOR_DIR
adb pull /system/bin/akmd $VENDOR_DIR
chmod 755 $VENDOR_DIR/akmd
adb pull /system/bin/awb_camera $VENDOR_DIR
adb pull /system/bin/awb_camera $VENDOR_DIR
adb pull /system/bin/bma150_usr $VENDOR_DIR
adb pull /system/bin/dmagent $VENDOR_DIR
adb pull /system/bin/logcat2 $VENDOR_DIR
adb pull /system/bin/lsc_camera $VENDOR_DIR
adb pull /system/bin/rmt_storage $VENDOR_DIR
adb pull /system/bin/record $VENDOR_DIR
adb pull /system/bin/recordvideo $VENDOR_DIR
adb pull /system/etc/AudioBTID.csv $VENDOR_DIR
adb pull /system/etc/AdieHWCodec.csv $VENDOR_DIR
adb pull /system/etc/AdieHWCodec_NEL.csv $VENDOR_DIR
adb pull /system/etc/TPA2051_CFG.csv $VENDOR_DIR
adb pull /system/lib/egl/eglsubAndroid.so $VENDOR_DIR
adb pull /system/lib/egl/libEGL_adreno200.so $VENDOR_DIR
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so $VENDOR_DIR
adb pull /system/lib/egl/libGLESv2_adreno200.so $VENDOR_DIR
adb pull /system/lib/egl/libGLESv2S3D_adreno200.so $VENDOR_DIR
adb pull /system/lib/egl/libq3dtools_adreno200.so $VENDOR_DIR
adb pull /system/lib/libsc-a2xx.so $VENDOR_DIR
adb pull /system/lib/libc2d2_z180.so $VENDOR_DIR
adb pull /system/lib/libC2D2.so $VENDOR_DIR
adb pull /system/lib/libOpenVG.so $VENDOR_DIR
adb pull /system/lib/libOpenMAXAL.so $VENDOR_DIR
adb pull /system/lib/libOpenSLES.so $VENDOR_DIR
adb pull /system/lib/libgsl.so $VENDOR_DIR
adb pull /system/lib/libhtc_acoustic.so $VENDOR_DIR
adb pull /system/lib/libaudioalsa.so $VENDOR_DIR
adb pull /system/lib/hw/camera.default.so $VENDOR_DIR
adb pull /system/lib/liboemcamera.so $VENDOR_DIR
adb pull /system/lib/libcameraface.so $VENDOR_DIR
adb pull /system/lib/libposteffect.so $VENDOR_DIR
adb pull /system/lib/libcamerapp.so $VENDOR_DIR
adb pull /system/lib/libsurfaceflinger_client.so $VENDOR_DIR
adb pull /system/lib/libchromatix_s5k4e1gx_default_video.so $VENDOR_DIR
adb pull /system/lib/libchromatix_s5k4e1gx_preview.so $VENDOR_DIR
adb pull /system/lib/libOlaEngine.so $VENDOR_DIR
adb pull /system/lib/libwvm.so $VENDOR_DIR
adb pull /system/lib/libwvdrm_L3.so $VENDOR_DIR
adb pull /system/lib/libWVStreamControlAPI_L3.so $VENDOR_DIR
adb pull /system/lib/libposteffect.so $VENDOR_DIR
adb pull /system/lib/libgemini.so $VENDOR_DIR
adb pull /system/lib/libmmipl.so $VENDOR_DIR
adb pull /system/lib/libmmjpeg.so $VENDOR_DIR
adb pull /system/lib/libims_ril.so $VENDOR_DIR
adb pull /system/lib/libhtc_ril.so $VENDOR_DIR

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
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

# This file is generated by device/__MANUFACTURER__/__DEVICE__/extract-files.sh - DO NOT EDIT

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudioalsa.so:obj/lib/libaudioalsa.so

# All the blobs necessary for lexikon
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/akmd:/system/bin/akmd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/awb_camera:/system/bin/awb_camera \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bma150_usr:/system/bin/bma150_usr \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/dmagent:/system/bin/dmagent \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/logcat2:/system/bin/logcat2 \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lsc_camera:/system/bin/lsc_camera \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/rmt_storage:/system/bin/rmt_storage \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/record:/system/bin/record \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/recordvideo:/system/bin/recordvideo \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/AudioBTID.csv:/system/etc/AudioBTID.csv \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/AdieHWCodec.csv:/system/etc/AdieHWCodec.csv \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/AdieHWCodec_NEL.csv:/system/etc/AdieHWCodec_NEL.csv \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/TPA2051_CFG.csv:/system/etc/TPA2051_CFG.csv \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/eglsubAndroid.so:/system/lib/egl/eglsubAndroid.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv2S3D_adreno200.so:/system/lib/egl/libGLESv2S3D_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsc-a2xx.so:/system/lib/libsc-a2xx.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libc2d2_z180.so:/system/lib/libc2d2_z180.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libC2D2.so:/system/lib/libC2D2.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOpenVG.so:/system/lib/libOpenVG.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOpenMAXAL.so:/system/lib/libOpenMAXAL.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOpenSLES.so:/system/lib/libOpenSLES.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libgsl.so:/system/lib/libgsl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libhtc_acoustic.so:/system/lib/libhtc_acoustic.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudioalsa.so:/system/lib/libaudioalsa.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/camera.default.so:system/lib/hw/camera.default.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/liboemcamera.so:system/lib/liboemcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcameraface.so:system/lib/libcameraface.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libposteffect.so:system/lib/libposteffect.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcamerapp.so:system/lib/libcamerapp.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsurfaceflinger_client.so:system/lib/libsurfaceflinger_client.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libchromatix_s5k4e1gx_default_video.so:/system/lib/libchromatix_s5k4e1gx_default_video.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libchromatix_s5k4e1gx_preview.so:/system/lib/libchromatix_s5k4e1gx_preview.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOlaEngine.so:system/lib/libOlaEngine.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libwvm.so:/system/lib/libwvm.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libwvdrm_L3.so:/system/lib/libwvdrm_L3.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libWVStreamControlAPI_L3.so:/system/lib/libWVStreamControlAPI_L3.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libposteffect.so:/system/lib/libposteffect.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libgemini.so:/system/lib/libgemini.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmmipl.so:/system/lib/libmmipl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmmjpeg.so:/system/lib/libmmjpeg.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libims_ril.so:/system/lib/libims_ril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libhtc_ril.so:/system/lib/libhtc_ril.so
EOF
./setup-makefiles.sh
