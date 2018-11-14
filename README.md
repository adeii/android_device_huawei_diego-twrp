# TWRP_device_huawei_london
Future TWRP for LDN-L21 / Y7 Prime 2018 - in experimental phase

Since stock rom stops at Android 8.0, use the same branch at 

https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni/tree/twrp-8.0

How to build TWRP (minimal, experimental)

    repo init --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-8.0
    
    repo sync
    
    mkdir device
    cd device
    mkdir huawei
    cd huawei
    git clone https://github.com/adeii/twrp_device_huawei_london.git -b oreo london
    
    <patching is needed***>
    
    . build/envsetup.sh
    lunch omni_london-eng
    mka recoveryimage

*** Copy qcom.patch to device/qcom/common and patch cryptfs_hw/Android.mk
  
    cd ../..
    cp device/huawei/london/qcom.patch device/qcom/common
    git am3 device/qcom/common/qcom.patch
    cd ../..
    
If all works, go to bootloader / fastboot mode and flash recovery_ramdisk

    fastboot flash recovery_ramdisk recovery.img
    fastboot reboot-recovery
    
If you want use it only once without installation (hope it will work), type 

    fastboot boot recovery.img    
